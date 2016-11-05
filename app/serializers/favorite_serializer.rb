class FavoriteSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :pattern

  def user
    object.user.id
  end

  def pattern
    object.pattern.id
  end
end
