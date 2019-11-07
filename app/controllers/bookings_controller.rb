class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
    @rides = current_user.rides.joins(:bookings)
  
  end
end
