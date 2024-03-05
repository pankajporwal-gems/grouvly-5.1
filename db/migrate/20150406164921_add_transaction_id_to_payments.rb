class AddTransactionIdToPayments < ActiveRecord::Migration[4.2]
  def change
    add_column :payments, :transaction_id, :string
  end
end
