class Api::UsersController < ApplicationController

  before_action :set_user, only: [:authorities]
  before_action :set_user_authorities, only: [:authorities]

  def authorities
    user_authorities = @user_authorities.each_with_object({}) do |user_authority, hash|
      hash[user_authority.service] = hash[user_authority.service] || []

      hash[user_authority.service] << {
        function: user_authority.function,
        writable: user_authority.writable,
      }
    end

    render json: user_authorities
  end

  private
    def set_user
      @user = User.find_by!(uid: params[:uid])
    end

    def set_user_authorities
      @user_authorities = @user.authorities
    end

end
