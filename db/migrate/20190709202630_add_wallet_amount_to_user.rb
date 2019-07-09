class AddWalletAmountToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :wallet_amount, :integer
  end
end
