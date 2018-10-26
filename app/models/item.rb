class Item < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: {greater_than: 0}

  belongs_to :user
  has_many :images, dependent: :destroy
  has_many :rentings
  has_many :reviews, through: :rentings

  accepts_nested_attributes_for :images

  def available?
    !self.rentings.any?{|renting| DateTime.now < renting.calculate_due_date}
  end

  def owner
    self.user
  end

  def owner_name
    self.user.name
  end

  def self.search(term)
    if term
      where('name LIKE ?', "%#{term}%").order('id DESC')
    else
      order('id DESC')
    end
  end
end
