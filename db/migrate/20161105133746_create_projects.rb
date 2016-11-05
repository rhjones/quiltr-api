class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :notes
      t.date :start_date
      t.date :finish_date
      t.boolean :finished

      t.timestamps null: false
    end
  end
end
