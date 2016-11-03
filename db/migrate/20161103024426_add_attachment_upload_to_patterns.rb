class AddAttachmentUploadToPatterns < ActiveRecord::Migration
  def self.up
    change_table :patterns do |t|
      t.attachment :upload
    end
  end

  def self.down
    remove_attachment :patterns, :upload
  end
end
