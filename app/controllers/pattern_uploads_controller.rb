class PatternUploadsController < ApplicationController
  before_action :set_pattern_upload, only: [:show, :destroy]

  # GET /pattern_uploads
  # GET /pattern_uploads.json
  def index
    @pattern_uploads = PatternUpload.all

    render json: @pattern_uploads
  end

  # GET /pattern_uploads/1
  # GET /pattern_uploads/1.json
  def show
    render json: @pattern_upload
  end

  # POST /pattern_uploads
  # POST /pattern_uploads.json
  def create
    @pattern_upload = PatternUpload.new(pattern_upload_params)

    if @pattern_upload.save
      render json: @pattern_upload, status: :created, location: @pattern_upload
    else
      render json: @pattern_upload.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pattern_uploads/1
  # DELETE /pattern_uploads/1.json
  def destroy
    @pattern_upload.destroy

    head :no_content
  end

  private

    def set_pattern_upload
      @pattern_upload = PatternUpload.find(params[:id])
    end

    def pattern_upload_params
      params.require(:pattern_upload).permit(:pattern_image, :pattern_id)
    end
end
