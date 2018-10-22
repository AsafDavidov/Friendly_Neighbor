class Item < ApplicationRecord
  belongs_to :user ####Renter
  has_many :images
  has_many :rentings
  has_many :reviews, through: :rentings

  def available?
    !self.rentings.any?{|renting| renting.final_price == nil}
  end

  def owner
    self.user
  end

  def owner_name
    self.user.name
  end

end
