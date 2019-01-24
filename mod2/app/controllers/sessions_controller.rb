class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      @error = "Login Unsuccessful"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to users_path
  end

end