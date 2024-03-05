class SetEmailAddressNotNullToFalseUserInfo < ActiveRecord::Migration[4.2]
  def change
    change_column_null :user_infos, :email_address, true
  end
end
