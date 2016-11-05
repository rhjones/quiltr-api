class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username
  has_many :projects
  has_many :favorites
end
