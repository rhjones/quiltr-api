class CreatePatternUploads < ActiveRecord::Migration
  def change
    create_table :pattern_uploads do |t|

      t.timestamps null: false
    end
  end
end
