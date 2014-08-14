class UsersController < ApplicationController
  layout 'user'

  def index
    @users = User.all
    render layout: false
  end

  def create
    User.create(user_params)
  end

  def new
    @user = User.new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :birthday_wish)
  end

end
