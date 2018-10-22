class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    byebug
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to controller:"sessions", action:"welcome"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end



  private

  def user_params
    params.require(:user).permit(:name, :address, :email, :password, :password_confirmation)
  end
end
