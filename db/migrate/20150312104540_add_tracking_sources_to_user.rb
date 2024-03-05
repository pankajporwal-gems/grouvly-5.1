class AddTrackingSourcesToUser < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :acquisition_source, :string
    add_column :users, :acquisition_channel, :string
    add_column :users, :acquisition_medium, :string
  end
end
