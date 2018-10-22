class User < ApplicationRecord
  has_many :items #As a renter
  has_many :rentings #as a borrower
  
end
