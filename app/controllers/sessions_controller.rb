class SessionsController < ApplicationController
  skip_before_action :require_login, only:[:welcome,:login,:create]

  def welcome
    return redirect_to controller: "items", action: "index" if !session[:user_id].nil?
    redirect_to controller: "sessions", action: "login"
  end

  def login
    
  end

  def create
    @user = User.find_by(name: params["name"])
    if @user && @user.authenticate(params["password"])
      session[:user_id] = @user.id
      redirect_to controller: "sessions", action: "welcome"
    else
      flash[:errors] = ["Unknown username or incorrect password."]
      redirect_to login_path
    end
  end

  def destroy
    reset_session
    redirect_to controller: "sessions", action: "welcome"
  end

end
