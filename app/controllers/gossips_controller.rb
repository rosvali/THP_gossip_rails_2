class GossipsController < ApplicationController
  before_action :authenticate_user, only: [:new, :create, :show, :edit, :destroy]

  def new
    @gossip = Gossip.new
    puts session[:user_id]
  end

  def create
    @gossip = Gossip.new(gossips_params)
    @gossip.user = current_user
    if @gossip.save
      redirect_to gossips_path
    else
      render 'new'
    end
  end

  def index
    @gossips = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    @gossip.update(gossips_params)
    redirect_to gossips_path
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.delete
    redirect_to gossips_path
  end

  private

  def gossips_params
    params.require(:gossip).permit(:title, :content)
  end

  def authenticate_user
    if !current_user
      redirect_to new_session_path
    end
  end
end
