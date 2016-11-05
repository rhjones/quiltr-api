class AddPatternRefToPatternUploads < ActiveRecord::Migration
  def change
    add_reference :pattern_uploads, :pattern, index: true, foreign_key: true
  end
end
