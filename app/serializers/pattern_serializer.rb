class PatternSerializer < ActiveModel::Serializer
  attributes :id, :svg, :colors, :quilt_size, :block_size
  has_one :pattern_upload
  has_many :projects
end
