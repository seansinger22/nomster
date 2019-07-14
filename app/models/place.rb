class Place < ApplicationRecord
  paginates_per 10
  belongs_to :user
  geocoded_by :address
  validates :name, presence: true, length: { minimum: 4 }
  validates :address, presence: true
  validates :description, presence: true
  after_validation :geocode
end
