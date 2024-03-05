class UpdatePaymentStatus < ActiveRecord::Migration[4.2]
  def change
    Payment.where(status: nil).each do |payment|
      payment.update_attribute(:status, 'success')
    end
  end
end
