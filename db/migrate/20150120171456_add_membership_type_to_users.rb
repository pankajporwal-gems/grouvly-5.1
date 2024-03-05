class AddMembershipTypeToUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :membership_type, :string, default: 'regular'
  end
end
