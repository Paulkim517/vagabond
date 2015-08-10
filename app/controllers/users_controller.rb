class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)
    session[:user_id] = user.id
    redirect_to user_path(user)
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
    @user = User.find(session[:user_id])
    render :show
  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation, :location)
    end
end
