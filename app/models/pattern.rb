class Pattern < ActiveRecord::Base
  has_attached_file :upload, :default_url => '/images/no-pattern-image.png'
  validates_attachment_content_type :upload, :content_type => /\Aimage\/.*\Z/


  # By default, every file uploaded will be named 'data'.
  # This renames the file to a timestamp, preventing name collisions.
  # This will also fix browser caching issues for updates
  def rename_upload
    self.upload.instance_write :file_name, "#{Time.now.to_i.to_s}.png"
  end

  before_post_process :rename_upload
end
