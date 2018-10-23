class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :address, presence: true



  has_secure_password
  has_many :items #As a renter
  has_many :rentings #as a borrower

  def reviews
    self.items.map do |item|
      item.rentings.map do |renting|
        renting.review
      end
    end.flatten
  end

  def five_recent_reviews
    reviews.sort_by(&:created_at).reverse.first(5)
  end
end
