class Place < ApplicationRecord
  paginates_per 10
  
  belongs_to :user
  has_many :comments
  has_many :photos

  mount_uploader :picture, PictureUploader

  geocoded_by :address
  after_validation :geocode
  
  validates :name, presence: true, length: { minimum: 4 }
  validates :address, presence: true
  validates :description, presence: true
end
