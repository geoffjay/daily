# Handle user restistration
module Auth
  class RegistrationsController < ApplicationController
    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      if @user.save
        # store the saved user id in a session
        session[:user_id] = @user.id
        redirect_to root_path, notice: 'Successfully created account'
      else
        render :new
      end
    end

    private

    def user_params
      params.permit(:email, :first_name, :last_name, :password)
    end
  end
end
