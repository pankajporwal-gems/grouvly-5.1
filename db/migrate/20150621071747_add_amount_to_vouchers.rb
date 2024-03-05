class AddAmountToVouchers < ActiveRecord::Migration[4.2]
  def change
    add_column :vouchers, :amount, :float, null: false
  end
end
