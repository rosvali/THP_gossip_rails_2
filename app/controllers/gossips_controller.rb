class GossipsController < ApplicationController
  before_action :authenticate_user, only: [:new, :create, :show, :edit, :destroy]

  def new
    @gossip = Gossip.new
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
    @gossip = gossips_finder
  end

  def edit
    @gossip = gossips_finder
  end

  def update
    @gossip = gossips_finder
    @gossip.update(gossips_params)
    redirect_to gossips_path
  end

  def destroy
    @gossip = gossips_finder
    @gossip.delete
    redirect_to gossips_path
  end

  private

  def gossips_params
    params.require(:gossip).permit(:title, :content)
  end

  def gossips_finder
    Gossip.find(params[:id])
  end

  def authenticate_user
    if !current_user
      redirect_to new_session_path
    end
  end
end
