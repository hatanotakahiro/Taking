class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:search]

  def search
    if user_params[:name].present?
      @users = User.where('name LIKE ?', "%#{user_params[:name]}%")
    else
      @users = User.none
    end
  end

  private
  def user_params
    params.require(:user).permit(:name)
  end
end
