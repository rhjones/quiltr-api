class ProjectUploadSerializer < ActiveModel::Serializer
  attributes :id, :photo_url
  # belongs_to :project, inverse_of: :project_uploads

  # def project
  #   object.project.id
  # end
end
