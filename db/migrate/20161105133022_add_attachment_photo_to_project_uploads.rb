class AddAttachmentPhotoToProjectUploads < ActiveRecord::Migration
  def self.up
    change_table :project_uploads do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :project_uploads, :photo
  end
end
