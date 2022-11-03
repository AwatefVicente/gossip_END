class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user_db = User.find_by(id: params[:id])
  end

  def create
    @user = User.new(
        first_name: params[:first_name],
        last_name: params[:last_name],
        description: params[:description],
        email: params[:email],
        age: params[:age],
        password: params[:password],
        password_confirmation: params[:confirm_password],
        city_id: rand(111..120)
      )

    if @user.save

      puts 'Utilisateur sauvegardé'
      redirect_to '/'
    else
      puts 'Tout est kapoot'
      render new_user_path
    end
  end

  

end