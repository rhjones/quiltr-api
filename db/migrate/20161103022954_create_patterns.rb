class CreatePatterns < ActiveRecord::Migration
  def change
    create_table :patterns do |t|
      t.string :quilt_size

      t.timestamps null: false
    end
  end
end
