class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :notes, :start_date, :finish_date, :finished
  has_many :project_uploads
end
