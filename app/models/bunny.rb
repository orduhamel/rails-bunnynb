class Bunny < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :name, :description, :address, :price_per_day, presence: true
  validates :price_per_day, numericality: true
  # validates :fur, inclusion: { in: %w(rough soft fluffy) }
  # validates :size, inclusion: { in: %w(dwarf small medium large giant) }
  # validates :weight, inclusion: { in: %w(light normal heavy enormous) }
  # validates :skill, inclusion: { in: %w(cuddly breeding partygoer calming acrobat boxer) }
  # validates :cleanliness, inclusion: { in: (0..5) }
end
