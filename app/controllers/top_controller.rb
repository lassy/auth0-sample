class TopController < ApplicationController

  def index
    @user = session[:userinfo] || {}
  end

end
