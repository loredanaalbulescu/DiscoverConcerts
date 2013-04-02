class CreateParticipates < ActiveRecord::Migration
  def change
    create_table :participates do |t|
      t.integer :user_id
      t.integer :concert_id

      t.timestamps
    end
  end
end
