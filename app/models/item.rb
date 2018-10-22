class Item < ApplicationRecord
  belongs_to :user ####Renter
  has_many :images
  has_many :rentings
  has_many :reviews, through: :rentings
end
