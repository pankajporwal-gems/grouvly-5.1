class RemoveAcquisitionMediumFromUsers < ActiveRecord::Migration[4.2]
  def change
    remove_columns :users, :acquisition_medium
  end
end
