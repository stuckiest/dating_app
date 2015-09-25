class InterestsController < ApplicationController
  before_action :find_interest, only: [:show, :edit, :update, :destroy]
  def index
    @interest = Interest.all
  end

  def show
  end

  def new
    @interest = Interest.new
  end

  def create
    interest = Interest.new(interest_params)
    if interest.save
      redirect_to interests_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @interest.update(interest_params)
      redirect_to interests_path
    else
      render :edit
    end
  end

  def destroy
    @interest.destroy
    redirect_to interests_path
  end

  private

  def interest_params
    params.require(:interest).permit(:interest)
  end

  def find_user
    @interest = Interest.find(params[:id])
  end 

end
