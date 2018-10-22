class Renting < ApplicationRecord
  belongs_to :item
  belongs_to :user ######BORROWER
end
