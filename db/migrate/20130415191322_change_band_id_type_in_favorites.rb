class ChangeBandIdTypeInFavorites < ActiveRecord::Migration
  def up
    change_column :favorites, :band_id, :string
  end

  def down
    change_column :favorites, :band_id, :integer
  end
end
