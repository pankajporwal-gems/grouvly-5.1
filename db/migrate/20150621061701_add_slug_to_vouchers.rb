class AddSlugToVouchers < ActiveRecord::Migration[4.2]
  def change
    add_column :vouchers, :slug, :string
    add_index :vouchers, :slug
  end
end
