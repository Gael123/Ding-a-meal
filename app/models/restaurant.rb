class Restaurant < ApplicationRecord
  has_many :meals
  has_many :users, through: :meals
  validates :name, presence: true
  validates_associated :meals
  validates :adress, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
