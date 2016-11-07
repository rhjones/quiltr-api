class PatternSerializer < ActiveModel::Serializer
  attributes :id, :svg, :colors, :quilt_size, :block_size, :color_scheme
  has_one :pattern_upload
  has_many :projects
  has_many :favorites

  # def pattern_upload
  #   object.pattern_upload.id
  # end

  def projects
    object.projects.pluck(:id)
  end

  def favorites
    object.favorites.pluck(:id)
  end
end
