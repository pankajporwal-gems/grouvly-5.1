class CreateReferrals < ActiveRecord::Migration[4.2]
  def change
    create_table :referrals do |t|
      t.belongs_to :user, null: false
      t.integer    :referral_id, null: false
      t.timestamps null: false
    end
  end
end
