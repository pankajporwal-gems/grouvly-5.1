class RemoveDrinksFromUserInfos < ActiveRecord::Migration[4.2]
  def change
    remove_column :user_infos, :drinks
  end
end
