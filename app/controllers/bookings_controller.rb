class BookingsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @bookings = current_user.bookings
    @rides = current_user.rides.joins(:bookings)
  
  end
end
