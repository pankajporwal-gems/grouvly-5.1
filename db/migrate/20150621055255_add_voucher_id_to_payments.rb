class AddVoucherIdToPayments < ActiveRecord::Migration[4.2]
  def change
    add_column :payments, :voucher_id, :integer
    add_index :payments, [:id, :voucher_id], unique: true
  end
end
