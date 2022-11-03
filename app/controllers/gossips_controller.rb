class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def edit
    @gossips = Gossip.find(params[:id])
  end

  def new
  end

  def show
    @gossips = Gossip.find(params[:id])
  end
end
