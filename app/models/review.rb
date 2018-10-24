class Review < ApplicationRecord
  validates :rating, presence: true, inclusion: {in: [1,2,3,4,5], message: "Please enter a whole number between 1 and 5."}
  belongs_to :renting
end
