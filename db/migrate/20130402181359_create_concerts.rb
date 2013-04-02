class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :name
      t.string :city
      t.datetime :date_time
      t.string :location
      t.text :description
      t.string :price

      t.timestamps
    end
  end
end
