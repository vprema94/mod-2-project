class ApplicationController < ActionController::Base

  helper_method :current_user

  def authorize!
    unless current_user
      flash[:notice] = "You must be logged in to do that"
      return redirect_to user_path(current_user)
    end
  end

  def current_user
    return nil unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end

end
