class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :notes, :start_date, :finish_date, :finished, :belongs_to_current_user
  has_many :project_uploads
  # , inverse_of: :project
  belongs_to :pattern
  belongs_to :user

  def project_uploads
    object.project_uploads.pluck(:id)
  end

  def user
    object.user.id
  end

  def pattern
    object.pattern.id
  end

  def belongs_to_current_user
    scope == object.user
  end
end
