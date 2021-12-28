class ApplicationController < ActionController::Base
  before_action :set_current_user

  def set_current_user
    Current.user = User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def require_user_login!
    # use as `before_action :require_user_login!`
    redirect_to auth_login_path, alert: 'You must be logged in' if Current.user.nil?
  end
end
