class DashboardController < ApplicationController
  before_action :require_user_login!

  def index
    @activities = Current.user.activities
  end
end
