class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bunny

  # validates :start_date, :end_date, :status, :total_price, presence: true
  validates :total_price, numericality: true
  # validates :status, inclusion: { in: %w(pending confirmed refused) }
end
