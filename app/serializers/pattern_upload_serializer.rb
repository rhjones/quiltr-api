class PatternUploadSerializer < ActiveModel::Serializer
  attributes :id, :pattern_image_url
  belongs_to :pattern
end
