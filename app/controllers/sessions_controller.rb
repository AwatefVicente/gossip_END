class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      puts 'tout est bon'
      session[:user_id] = @user.id
      redirect_to '/'
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
      puts 'Tout est faux'
    end
  end

  def destroy
    session.delete(:user_id)
  end
end
