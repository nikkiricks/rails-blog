class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create

    user = User.create(user_create_params)

    # using method instead
    # user = User.create(
    #   email: params[:email],
    #   password: params[:password]
    # )

    redirect_to '/users'
  end

  def user_create_params
    params.require(:user).permit(:email, :password, :first_name, :last_name)
  end
end
