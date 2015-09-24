class UsersController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      redirect_to users_path
    else
      render 'new'
    end
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:name, :age, :email, :gender, :looking_for, :city, :state)
  end


end


