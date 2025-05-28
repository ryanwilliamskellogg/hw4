class UsersController < ApplicationController

  def new
    # renders signup form
  end

  def create
    @user = User.new
    @user["username"] = params["username"]
    @user["email"] = params["email"]
    @user["password"] = params["password"]
    @user.save
    redirect_to "/login"
  end
  
end


