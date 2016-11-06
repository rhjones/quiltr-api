class FavoritesController < OpenReadController
  before_action :set_favorite, only: [:destroy]

  def index
    @favorites = Favorite.all

    render json: @favorites
  end

  def show
    @favorite = Favorite.find(params[:id])
    render json: @favorite
  end

  # POST /favorites
  # POST /favorites.json
  def create
    @favorite = current_user.favorites.build(favorite_params)

    if @favorite.save
      render json: @favorite, status: :created, location: @favorite
    else
      render json: @favorite.errors, status: :unprocessable_entity
    end
  end

  # DELETE /favorites/1
  # DELETE /favorites/1.json
  def destroy
    @favorite.destroy

    head :no_content
  end

  private

    def set_favorite
      @favorite = current_user.favorites.find(params[:id])
    end

    def favorite_params
      params.require(:favorite).permit(:pattern_id)
    end
end
