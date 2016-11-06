class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :is_favorited_by_current_user
  belongs_to :user
  belongs_to :pattern

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
