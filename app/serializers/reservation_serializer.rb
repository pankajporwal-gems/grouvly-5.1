class ReservationSerializer < ActiveModel::Serializer

  def self.root
    'reservation'
  end

  attributes :id, :slug, :current_state, :roll_count, :wing_quantity

  has_one :user
  has_many :wings
end
