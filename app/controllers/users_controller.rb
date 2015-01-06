class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :following, :followers]
  before_action :authenticate_user!, except: [:show]

  def show
  end

  def following
    @users = @user.followed_users
    render 'show_follow'
  end

  def followers
    @users = @user.followers
    render 'show_follow'
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :sex, :birthday, :birth_prefecture_id, :current_prefecture_id)
    end
end
