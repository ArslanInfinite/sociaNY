class AddLocationToReservation < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :location, :string
    add_column :reservations, :capacity, :integer
    add_column :reservations, :price, :integer
    add_column :reservations, :datetime, :datetime
    add_column :reservations, :user_id, :integer
       add_column :reservations, :activity_id, :integer
  end
end
