class AddStatusMessageDataToPayments < ActiveRecord::Migration[4.2]
  def change
    add_column :payments, :currency, :string, null: false
    add_column :payments, :status, :string
    add_column :payments, :message, :string
    add_column :payments, :data, :json
  end
end
