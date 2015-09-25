class Crime < ActiveRecord::Base
  belongs_to :user
  before_action :find_crime, only: [:show, :edit, :update, :destroy]
  
  def index
    @crime = Crime.all
  end

  def show
  end

  def new
    @crime = Crime.new
  end

  def create
    crime = Crime.new(crime_params)
    if crime.save
      redirect_to crimes_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @crime.update(crime_params)
      redirect_to crimes_path
    else
      render :edit
    end
  end

  def destroy
    @crime.destroy
    redirect_to crimes_path
  end

  private

  def interest_params
    params.require(:crime).permit(:crime, :sentence)
  end

  def find_user
    @crime = Crime.find(params[:id])
  end 

end

end
