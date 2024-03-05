class EnableNullInCurrentCompany < ActiveRecord::Migration[4.2]
  def change
    change_column :user_infos, :current_employer, :string, null: true
  end
end
