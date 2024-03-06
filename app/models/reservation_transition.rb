class ReservationTransition < ApplicationRecord
  # If your transition table doesn't have the default `updated_at` timestamp column,
  # you'll need to configure the `updated_timestamp_column` option, setting it to
  # another column name (e.g. `:updated_on`) or `nil`.
  #
  # self.updated_timestamp_column = :updated_on
  # self.updated_timestamp_column = nil

  belongs_to :reservation, inverse_of: :reservation_transitions

  after_destroy :update_most_recent, if: :most_recent?
  after_create :update_most_recent_flag

  has_paper_trail
  
  private

  def update_most_recent_flag
    ReservationTransition.transaction do
      reservation.reservation_transitions
                 .where.not(id: id) # Exclude the newly created record
                 .update_all(most_recent: false)

      update_column(:most_recent, true) # Set most_recent to true for the newly created record
    end
  end

  def update_most_recent
    last_transition = reservation.reservation_transitions.order(:sort_key).last
    return unless last_transition.present?
    last_transition.update_column(:most_recent, true)
  end
end
