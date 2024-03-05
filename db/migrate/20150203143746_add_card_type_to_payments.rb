class AddCardTypeToPayments < ActiveRecord::Migration[4.2]
  def change
    add_column :payments, :card_type, :string
  end
end
