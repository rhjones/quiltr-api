class AddColorSchemeToPatterns < ActiveRecord::Migration
  def change
    add_column :patterns, :color_scheme, :string
  end
end
