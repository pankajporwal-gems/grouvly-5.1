class ChangeCustomerIdToString < ActiveRecord::Migration[4.2]
  def change
    change_column :users, :customer_id, :string
  end
end
