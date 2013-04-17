class ChangeBandIdTypeInConcerts < ActiveRecord::Migration
  def up
    change_column :concerts, :band_id, :string
  end

  def down
    change_column :concerts, :band_id, :integer
  end
end
