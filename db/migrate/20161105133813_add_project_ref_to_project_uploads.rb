class AddProjectRefToProjectUploads < ActiveRecord::Migration
  def change
    add_reference :project_uploads, :project, index: true, foreign_key: true
  end
end
