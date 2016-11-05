class PatternUpload < ActiveRecord::Base
  belongs_to :pattern

  has_attached_file :pattern_image,
                    :styles => { :medium => '300x300>', :thumb => '100x100>' },
                    :default_url => '/images/:style/missing.png'
  validates_attachment_content_type :pattern_image, :content_type => /\Aimage\/.*\Z/

  # By default, every file uploaded will be named 'data'.
  # This renames the file to a timestamp, preventing name collisions.
  # This will also fix browser caching issues for updates
  def rename_pattern_image
    self.pattern_image.instance_write :file_name, "#{Time.now.to_i.to_s}.png"
  end

  def pattern_image_url
    pattern_image.url
  end

  before_post_process :rename_pattern_image
end
