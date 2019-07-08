class AddColumnsToReview < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :content, :string
    add_column :reviews, :rating, :integer
    add_column :reviews, :user_id, :integer
    add_column :reviews, :activity_id, :integer
  end
end
