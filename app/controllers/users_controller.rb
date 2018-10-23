class UsersController < ApplicationController
  before_action :find_user, only: %w(show)
  def new
    @user = User.new
  end

  def create

    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to controller:"sessions", action:"welcome"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def show

    if @user.id == session[:user_id]
      render 'session_user'
    else
      render 'show'
    end
    
  end



  private

  def user_params
    params.require(:user).permit(:name, :address, :email, :password, :password_confirmation)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
