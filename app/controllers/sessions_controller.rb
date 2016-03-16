class SessionsController < ApplicationController
  def new
  end

  def create
    username = params[:username]
    password = params[:password]

    user = User.find_by username: username
    if user && user.authenticate(password)
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash.now[:alert] = "Something is wrong with your email or password"
      render :new
  end
end

  def delete
    session.delete :user_id
    redirect_to root_path
  end
end
