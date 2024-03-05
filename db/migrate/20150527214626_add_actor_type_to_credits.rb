class AddActorTypeToCredits < ActiveRecord::Migration[4.2]
  def change
    add_column :credits, :actor_type, :string, null: false, default: 'User'
  end
end
