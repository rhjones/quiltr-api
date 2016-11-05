class AddPatternRefToProjects < ActiveRecord::Migration
  def change
    add_reference :projects, :pattern, index: true, foreign_key: true
  end
end
