class RentingsController < ApplicationController
  before_action :find_renting, only: %w(show)
  def new
    find_item
    @renting = @item.rentings.build
  end

  def create
    find_item
    @renting = @item.rentings.build(renting_params)
    @renting.user = get_user
    @renting.calculate_cost(@renting.proposed_duration)
    if @renting.save
      redirect_to renting_path(@renting)
    else
      flash[:errors] = @renting.errors.full_messages
      redirect_to new_renting_path
    end
  end

  def show

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

  def find_renting
    @renting = Renting.find(params[:id])
  end

end
