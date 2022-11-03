class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def create
    @gossip = Gossip.new(content:params[:content],title:params[:title],user_id:session[:user_id])
    if @gossip.save
      redirect_to root_path, notice: "Le potin '#{@gossip.title.capitalize}' a bien été créé ! Félicitation"
    else
      flash.now[:messages] = @gossip.errors.full_messages
      render new_gossip_path
    end
  end
  
end
