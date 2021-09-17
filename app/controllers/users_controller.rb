class UsersController < ApplicationController
  include Secured

  def show
    @user_info = session[:userinfo]
  end

end
