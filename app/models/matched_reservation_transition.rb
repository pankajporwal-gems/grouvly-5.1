class MatchedReservationTransition < ApplicationRecord
  include Statesman::Adapters::ActiveRecordTransition
  belongs_to :matched_reservation, inverse_of: :matched_reservation_transitions
  after_create :update_most_recent_flag

  has_paper_trail

  def sort_key
    super.to_i
  end

  private

  def update_most_recent_flag
    MatchedReservationTransition.transaction do
      matched_reservation.matched_reservation_transitions
                 .where.not(id: id) # Exclude the newly created record
                 .update_all(most_recent: false)

      update_column(:most_recent, true) # Set most_recent to true for the newly created record
    end
  end
end
