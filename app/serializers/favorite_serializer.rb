class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :is_favorited_by_current_user
  has_one :user
  has_one :pattern

  def user
    object.user.id
  end

  def pattern
    object.pattern.id
  end

  def is_favorited_by_current_user
    scope == object.user
  end
end
