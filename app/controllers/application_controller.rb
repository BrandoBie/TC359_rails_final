class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

private

  def current_user
    User.find_by(id: session[:user_id])
  end
  helper_method :current_user

  def user_signed_in?
    !!current_user
  end
  helper_method :user_signed_in?

end
