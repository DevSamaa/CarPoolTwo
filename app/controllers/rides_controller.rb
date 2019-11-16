class RidesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_user_ride, only: [ :edit, :update, :destroy ]


  def index
    @rides = Ride.all # returns an array of rides
  end

  def show
    @ride = Ride.find(params[:id])  
    @ride_time = @ride.ride_time.strftime("%H:%M")
    session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        customer_email: current_user.email,
        line_items: [{
            name: @ride.user_id,
            description: "ride from: " + @ride.departure_city + "ride to: " + @ride.arrival_city,
            amount: (@ride.price * 100).to_i,
            currency: 'aud',
            quantity: 1,
        }],
        payment_intent_data: {
            metadata: {
                user_id: current_user.id,
                ride_id: @ride.id
            }
        },
        success_url: "#{root_url}payments/success?userId=#{current_user.id}&rideId=#{@ride.id}",
        cancel_url: "#{root_url}rides"
    )

    @session_id = session.id
  end

  def new
    @ride = Ride.new
  end

  def edit
    @ride = Ride.find(params[:id])
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
    @ride = Ride.find(params[:id])
    
    if @ride.update( ride_params )
      redirect_to @ride
    else
      render :edit
    end
  end

  def destroy
    @ride = Ride.find(params[:id])
    @ride.destroy
    redirect_to rides_path
  end


  private

  def ride_params
    ride_params = params.require(:ride).permit(:user_id, :departure_city, :arrival_city, :meeting_point, :ride_date, :ride_time, :car_color, :car_make, :price, :picture )
  end

  def set_user_ride
    id = params[:id]
    @ride = current_user.rides.find_by_id(id)

    if @ride == nil
      redirect_to rides_path
    end
  end

end
