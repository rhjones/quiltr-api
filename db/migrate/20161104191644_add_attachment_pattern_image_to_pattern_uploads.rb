class AddAttachmentPatternImageToPatternUploads < ActiveRecord::Migration
  def self.up
    change_table :pattern_uploads do |t|
      t.attachment :pattern_image
    end
  end

  def self.down
    remove_attachment :pattern_uploads, :pattern_image
  end
end
