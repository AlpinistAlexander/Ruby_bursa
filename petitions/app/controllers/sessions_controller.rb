class SessionsController < ApplicationController

  def new
  end
  
  def create
    user = User.auth(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Добро пожаловать!"
    else
      flash.now.alert = "Email или пароль не верный"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end
