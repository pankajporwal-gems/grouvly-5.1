class AddStateToPayments < ActiveRecord::Migration[4.2]
  def change
    add_column :payments, :method, :string, default: 'authorize'
  end
end
