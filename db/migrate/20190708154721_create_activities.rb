class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :title
      t.string :description
      t.integer :rating
      t.string :location
      t.integer :capacity
      t.integer :price
      t.datetime :datetime 

      t.timestamps
    end
  end
end
