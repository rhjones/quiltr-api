class CreateProjectUploads < ActiveRecord::Migration
  def change
    create_table :project_uploads do |t|

      t.timestamps null: false
    end
  end
end
