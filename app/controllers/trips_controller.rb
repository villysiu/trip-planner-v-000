  class TripsController < ApplicationController

  def show
  #  if params[:user_id]
      #@user = User.find_by(id: params[:user_id])
      @trip = Trip.find_by(id: params[:id])

    #  if @trip.user_id == current_user && current_user.trips.include?(@trip)
    if @trip.user_id == current_user
        @trip
      else
        redirect_to user_trips_path(@user), alert: "Trip not found"
      end

#    end
  end

  def new
    @trip = Trip.new
  end

  def create
    puts trip_params
    @trip = Trip.new(trip_params)
    @trip.user_id = current_user.id if current_user
    if @trip && @trip.save
    #  trip.user_id = current_user
  #    @trip.save
      redirect_to @trip
    else
      flash.now[:danger] = 'Invalid trip'
      render 'new'
    end
  end
  def index
    #show all trips by user
  #  if params[:user_id]
  #    if User.find_by(id: params[:user_id]).nil?
      #  render template: 'artist/index'
  #      redirect_to root_path, flash: { message: "User not found" }
  #    else
    #    @trips = User.find_by(id: params[:user_id]).trips
  #    end
  #  end
  end

  private
  def trip_params
    params.require(:trip).permit(:title, :description, :duration)
  end

end
