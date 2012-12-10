class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  
  def new
   @user = User.new  
  end
  def create
   @user = User.new(params[:user])
   if @user.save
    sign_in @user
    flash[:success] = "Welcome to the Nuapp2 Services!"
    redirect_to @user
   # Handle a successful save.
   else
    render 'new'
   end
  end
end
