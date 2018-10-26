class UsersController < ApplicationController
  before_action :find_user, only: %w(show edit update)
  skip_before_action :require_login, only:[:new,:create]
  def index
    @users = User.all
  end

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
      @rentings = @user.rentings
      render 'session_user'
    else
      render 'show'
    end

  end

  def edit
  end

  def update
    if @user.authenticate(params[:user][:old_password])
      if @user.update(user_params)

        redirect_to user_path(@user)
      else
        flash[:errors] = @user.errors.full_messages
        redirect_to edit_user_path(@user)
      end
    else
      flash[:errors] = ["Incorrect original password"]
      redirect_to edit_user_path(@user)
    end
  end

  
  # def destroy
  #   user = User.find(session[:user_id])
  #   user.destroy
  #   reset_session
  #   redirect_to controller: "sessions", action: "welcome"
  # end


  private

  def user_params
    params.require(:user).permit(:name, :address, :email, :password, :password_confirmation, :profile_picture)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
