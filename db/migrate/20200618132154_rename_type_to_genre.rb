class RenameTypeToGenre < ActiveRecord::Migration[6.0]
  def change
    rename_column :plants, :type, :genre
  end
end
