# These just exist to play around with colors and not have to clobber assets to
# reload when a new color is used that isn't part of the build.
module Admin
  class ThemesController < ApplicationController
    before_action :require_user_login!
  end
end
