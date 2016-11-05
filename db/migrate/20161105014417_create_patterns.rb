class CreatePatterns < ActiveRecord::Migration
  def change
    create_table :patterns do |t|
      t.string :svg
      t.integer :colors
      t.string :quilt_size
      t.integer :block_size

      t.timestamps null: false
    end
  end
end
