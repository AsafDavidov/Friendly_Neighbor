class Renting < ApplicationRecord
  belongs_to :item
  belongs_to :user ######BORROWER
  has_one :review
end
