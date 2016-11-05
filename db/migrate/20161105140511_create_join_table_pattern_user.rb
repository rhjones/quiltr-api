class CreateJoinTablePatternUser < ActiveRecord::Migration
  def change
    create_join_table :patterns, :users do |t|
      t.index [:pattern_id, :user_id]
      t.index [:user_id, :pattern_id]
    end
  end
end
