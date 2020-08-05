class UserController < ApplicationController
  def show
    @user = User.find(params[:id])
    puts @user.city.id
  end
end
