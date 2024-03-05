class RemoveLocationAddCurrencyInCredits < ActiveRecord::Migration[4.2]
  def change
    remove_column :credits, :location
    add_column :credits, :currency, :string, null: false
  end
end
