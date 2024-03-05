class AddCardToPayments < ActiveRecord::Migration[4.2]
  def change
    add_column :payments, :card_id, :integer
    add_index :payments, :card_id
  end
end
