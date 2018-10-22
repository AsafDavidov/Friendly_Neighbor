class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def welcome
    return redirect_to controller: "items", action: "index" if !session[:user_id].nil?
    redirect_to controller: "application", action: "login"
  end

  def login

  end
end
