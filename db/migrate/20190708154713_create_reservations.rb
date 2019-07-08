class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.string :location
      t.integer :capacity
      t.integer :price
      t.datetime :datetime 
      t.integer :user_id
      t.integer :activity_id
      t.timestamps
    end
  end
end
