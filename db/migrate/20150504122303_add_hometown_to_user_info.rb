class AddHometownToUserInfo < ActiveRecord::Migration[4.2]
  def change
    add_column :user_infos, :hometown, :string
  end
end
