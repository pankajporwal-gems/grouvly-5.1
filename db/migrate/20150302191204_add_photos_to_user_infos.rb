class AddPhotosToUserInfos < ActiveRecord::Migration[4.2]
  def change
    add_column :user_infos, :photos, :text, array: true, default: []
  end
end
