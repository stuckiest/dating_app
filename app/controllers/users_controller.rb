class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]
  def index
    @user = User.all
  end

  def show
   interests = Interest.where(user_id: user.id)

  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      redirect_to new_user_interest_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to users_path
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :age, :email, :gender, :looking_for, :city, :state)
  end

  def find_user
    @user = User.find(params[:id])
  end 

end


