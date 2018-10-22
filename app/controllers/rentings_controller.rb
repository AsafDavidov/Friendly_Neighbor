class RentingsController < ApplicationController

  def new
    @item = Item.find(params[:item_id])
    @renting = Renting.new
  end

end
