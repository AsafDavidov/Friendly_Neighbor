class Renting < ApplicationRecord
  belongs_to :item
  belongs_to :user ######BORROWER
  has_one :review

  def finalize
    ####TODO: Hours are ahead by four hours for some reason
    total_hours = ((DateTime.current - DateTime.parse(Renting.first.created_at.to_s)).to_f*24).round(2)
    self.final_price = total_hours * self.item.price.to_f
    self.save
  end

end
