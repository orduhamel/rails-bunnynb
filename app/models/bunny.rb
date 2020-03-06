class Bunny < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :name, :description, :address, :price_per_day, presence: true
  validates :price_per_day, numericality: true

  FURS = %w(rough soft fluffy)
  validates :fur, inclusion: { in: FURS }

  SIZES = %w(dwarf small medium large giant)
  validates :size, inclusion: { in: SIZES }

  WEIGHTS = %w(light normal heavy enormous)
  validates :weight, inclusion: { in: WEIGHTS }

  SKILLS = %w(cuddly breeding partygoer calming acrobat boxer)
  validates :skill, inclusion: { in: SKILLS }

  validates :cleanliness, inclusion: { in: (0..5) }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def light_shower
    5 - cleanliness
  end

  def self.fur_collection
    FURS.map do |fur|
      [I18n.t(fur), fur]
    end
  end

  def self.size_collection
    SIZES.map do |size|
      [I18n.t(size), size]
    end
  end

  def self.weight_collection
    WEIGHTS.map do |weight|
      [I18n.t(weight), weight]
    end
  end

  def self.skill_collection
    SKILLS.map do |skill|
      [I18n.t(skill), skill]
    end
  end
end
