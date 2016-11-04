class AddAttachmentPatternImageToPatterns < ActiveRecord::Migration
  def self.up
    change_table :patterns do |t|
      t.attachment :pattern_image
    end
  end

  def self.down
    remove_attachment :patterns, :pattern_image
  end
end
