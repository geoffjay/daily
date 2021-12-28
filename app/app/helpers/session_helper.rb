module SessionHelper
  def logged_in?
    !Current.user.nil?
  end
end
