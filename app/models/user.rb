class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :address, presence: true



  has_secure_password
  has_many :items #As a renter
  has_many :rentings #as a borrower

end
