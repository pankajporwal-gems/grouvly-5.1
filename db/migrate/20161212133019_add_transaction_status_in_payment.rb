class AddTransactionStatusInPayment < ActiveRecord::Migration[4.2]
  def change
    add_column :payments, :transaction_status, :string
  end
end
