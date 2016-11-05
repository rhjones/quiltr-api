class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username
  has_many :projects
  has_many :favorites

  def projects
    object.projects.pluck(:id)
  end

  def favorites
    object.favorites.pluck(:id)
  end
end
