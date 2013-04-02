class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :fb_id
      t.string :name
      t.string :genre
      t.string :city
      t.text :description

      t.timestamps
    end
  end
end
