class MainController < ApplicationController

  def home
  end

  def welcome
    @first_name = params[:first_name]
  end


end