class ApplicationController < ActionController::Base
  before_action :require_login
  


  private

  def require_login
    return redirect_to controller: "sessions", action: "welcome" unless session.include? :user_id
  end
end
