class RentingsController < ApplicationController

  def new
    find_item
    @renting = @item.rentings.build
  end

  def create
    byebug
    find_item
    @renting = @item.rentings.build(renting_params)
    @renting.user = get_user
    if @renting.save
      redirect_to renting_path(@renting)
    else
      flash[:errors] = @renting.errors.full_messages
      redirect_to new_renting_path
    end
  end

  private
  def renting_params
    params.require(:renting).permit(:item_id, :proposed_duration)
  end

  def find_item
    @item = Item.find(params[:item_id])
  end

  def get_user
    User.find(session[:user_id])
  end

end
