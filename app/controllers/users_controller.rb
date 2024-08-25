class UsersController < ApplicationController
  before_action :authenticate_user!  # Ensure user is logged in

  def show
    @user = current_user  # Fetch the currently logged-in user
  end
end
