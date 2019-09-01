class Meal < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  validates :name, presence: { message:
    "must be given" }
  validates :description, presence: true
  validates :price, presence: true
end
