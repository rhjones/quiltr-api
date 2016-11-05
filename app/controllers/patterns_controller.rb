class PatternsController < OpenReadController
  before_action :set_pattern, only: [:show, :destroy]

  # GET /patterns
  # GET /patterns.json
  def index
    @patterns = Pattern.all

    render json: @patterns
  end

  # GET /patterns/1
  # GET /patterns/1.json
  def show
    render json: @pattern
  end

  # POST /patterns
  # POST /patterns.json
  def create
    @pattern = Pattern.new(pattern_params)

    if @pattern.save
      current_user.patterns << @pattern
      render json: @pattern, status: :created, location: @pattern
    else
      render json: @pattern.errors, status: :unprocessable_entity
    end
  end

  # DELETE /patterns/1
  # DELETE /patterns/1.json
  def destroy
    @pattern.destroy

    head :no_content
  end

  private

    def set_pattern
      @pattern = Pattern.find(params[:id])
    end

    def pattern_params
      params.require(:pattern).permit(:svg, :colors, :quilt_size, :block_size)
    end
end
