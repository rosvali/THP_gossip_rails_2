class GossipsController < ApplicationController
  
  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(gossips_params)
    city = City.new
    user = User.new
    user.city = city
    @gossip.user = user
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

  def update
    @gossip = Gossip.find(params[:id])

  end
  private

  def gossips_params
    params.require(:gossip).permit(:title, :content)
  end
end
