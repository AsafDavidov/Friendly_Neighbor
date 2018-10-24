class ItemsController < ApplicationController
  before_action :find_item, only: %w(show destroy edit update)

  def index
    @items = Item.all
  end

  def show
  end

  def edit
    @images = @item.images.all
  end

  def update
    @item.update(item_params)
    redirect_to item_path(@item)
  end

  def new
    @item = Item.new
    @image = @item.images.build
  end

  def create
    item = Item.new
    item.user_id = session[:user_id]
    if item.update(item_params)
      redirect_to item_path(item)
    else
      flash[:errors] = item.errors.full_messages
      redirect_to new_item_path
    end

  end

  def destroy
    find_item.destroy
    redirect_to user_path(session[:user_id])
  end

  private

  def find_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :description, :price, images_attributes:[:url])
  end

end
