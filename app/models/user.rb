class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :address, presence: true


  has_secure_password
  has_many :items, dependent: :destroy #As a renter
  has_many :rentings #as a borrower

  def reviews
    self.items.map do |item|
      if !item.rentings.empty?
        item.rentings.map do |renting|
          renting.review if !renting.review.nil?
        end
      end
    end.flatten.delete_if {|el| el.nil?}
  end

  def five_recent_reviews
    reviews.sort_by(&:created_at).reverse.first(5)
  end

  def average_rating
    !self.reviews.empty? ? sprintf("%.2f", (reviews.map {|review| review.rating}.reduce(:+).to_f / reviews.count).round(2)) : "No reviews yet!"
  end
end
