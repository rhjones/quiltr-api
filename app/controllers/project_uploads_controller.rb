class ProjectUploadsController < OpenReadController
  before_action :set_project_upload, only: [:destroy]

  # GET /project_uploads
  # GET /project_uploads.json
  def index
    @project_uploads = ProjectUpload.all

    render json: @project_uploads
  end

  # GET /project_uploads/1
  # GET /project_uploads/1.json
  def show
    @project_upload = ProjectUpload.find(params[:id])
    render json: @project_upload
  end

  # POST /project_uploads
  # POST /project_uploads.json
  def create
    @project_upload = current_user.project_uploads.build(project_upload_params)

    if @project_upload.save
      render json: @project_upload, status: :created, location: @project_upload
    else
      render json: @project_upload.errors, status: :unprocessable_entity
    end
  end

  # DELETE /project_uploads/1
  # DELETE /project_uploads/1.json
  def destroy
    @project_upload.destroy

    head :no_content
  end

  private

    def set_project_upload
      @project_upload = current_user.project_uploads.find(params[:id])
    end

    def project_upload_params
      params.require(:project_upload).permit(:photo, :project_id)
    end
end
