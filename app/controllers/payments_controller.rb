class PaymentsController < ApplicationController
  def success
    @ride = Ride.find(params["rideId"])
    @booking = current_user.bookings.create(ride_id: @ride.id)

  end

end
