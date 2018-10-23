class ImagesController < ApplicationController
  before_action :find_image, only: %w(edit update show destroy)

  def new
    @image = Item.find(params[:item_id]).images.build
  end

  def create
    image = Image.create(image_params)
    redirect_to edit_item_path(image.item)
  end


  def destroy
    item = @image.item
    @image.destroy
    redirect_to edit_item_path(item)
  end

  private

  def image_params
    params.require(:image).permit(:url, :item_id)
  end

  def find_image
    @image = Image.find(params[:id])
  end

end
