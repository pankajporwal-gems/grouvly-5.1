class AddSessionCountToUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :session_count, :integer, default: 0
  end
end
