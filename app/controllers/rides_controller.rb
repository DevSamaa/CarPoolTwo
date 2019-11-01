class RidesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @ride = Ride.all
  end

  def show
    @ride = Ride.find(params[:id])
    @user = User.find(params[:id])
  end

  def new
    @ride = Ride.new
  end

  def edit
  end

  def create
    @ride = Ride.new(ride_params)
    @ride.user_id = current_user.id

    if @ride.save 
      redirect_to @ride 
    else 
      render :new 
     end 
  end

  def update
  end

  def destroy
    @ride = Ride.find(params[:id])
    @ride.destroy
    # link_to 'Destroy', ride_path(@ride), method: :delete
    # @ride.destroy
    # @ride = Ride.find(params[:id])
    redirect_to rides_path
  end


  private

  # def set_ride
  #   id = params[ :id ]
  #   @ride = Ride.find( id ) 
  # end
  
  # def set_user_ride
  #   id = params[:id]
  #   @ride = current_user.rides.find_by_id( id)
  
  #   if @ride == nil
  #     redirect_to rides_path
  #   else
  #     if @ride.price == nil
  #         @ride.price = 0  
  #     end
  #   end
    
  # end

  def ride_params
    ride_params = params.require(:ride).permit(:departure_city, :arrival_city, :meeting_point, :ride_date, :ride_time, :car_color, :car_make, :price )
  end

end
