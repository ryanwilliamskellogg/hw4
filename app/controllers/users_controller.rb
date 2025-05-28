class UsersController < ApplicationController

  def new
    # renders signup form
  end

def create
  @user = User.new
  @user["username"] = params["username"]
  @user["email"] = params["email"]
  @user.password = params["password"]  # must use dot notation for bcrypt to save a secure hashed password and save the user
  @user.save
  redirect_to "/login"
end



  
end


