class RemoveGenreFromBands < ActiveRecord::Migration
  def up
    remove_column :bands, :genre
  end

  def down
    add_column :bands, :genre, :string
  end
end
