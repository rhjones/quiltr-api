class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :belongs_to_current_user
  belongs_to :user
  belongs_to :pattern

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
