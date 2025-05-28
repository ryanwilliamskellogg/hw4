class ApplicationController < ActionController::Base
  before_action :current_user

  def current_user
    if session["user_id"]
      @current_user = User.find_by({ "id" => session["user_id"] })
    end
  end

  def require_login
    if session["user_id"] == nil
      flash["notice"] = "Please log in to view that page."
      redirect_to "/login"
    end
  end
end
