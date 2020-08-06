class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params.require(:user).permit(:email, :password, :first_name))
  	city = City.new
  	@user.city = city
  	if @user.save
  		redirect_to new_session_path
  	else
  		render 'new'
  	end
  end
end
