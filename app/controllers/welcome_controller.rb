class WelcomeController < ApplicationController
  def users
    @user = params[:id]
  end
end
