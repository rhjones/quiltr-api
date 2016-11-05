class DropJoinTablePatternUser < ActiveRecord::Migration
  def change
    drop_join_table :patterns, :users
  end
end
