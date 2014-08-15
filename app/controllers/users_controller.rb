class UsersController < ApplicationController
  layout 'user'

  def index
    @users = User.all
  end

  def ajax
    @users = User.all
    @age = age(Time.new(1987,8,31))
    render layout: false
  end

  def show
    @user = User.find(current_user.id)
  end

  def edit
    @user = User.find(current_user.id)
  end

  def update
    User.find(current_user.id).update(user_params)
    redirect_to user_path(current_user.id)
  end

  def destroy
    User.find(current_user.id).destroy
    session[:user_id] = nil
    redirect_to root_url
  end

  private

  def user_params
    params.require(:user).permit(:name, :birthday_wish)
  end

end
