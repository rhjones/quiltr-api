class ProjectUploadSerializer < ActiveModel::Serializer
  attributes :id, :photo_url
  belongs_to :project
end
