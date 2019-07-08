class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :username
      t.string :company
      t.integer :activity_id

      t.timestamps
    end
  end
end
