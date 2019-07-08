class AddTitleToActivity < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :title, :string
    add_column :activities, :description, :string
    add_column :activities, :location, :string
    add_column :activities, :capacity, :string 
    add_column :activities, :price, :string

    add_column :activities, :date, :datetime
  end
end
