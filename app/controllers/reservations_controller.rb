class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
    # find a way to pass the User_id and activity_id in when creating a new reservation
  end

  def create
   # can't create a resercvation without all of the params
    @reservation = Reservation.create!(reservation_params)
    redirect_to reservations_path
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
      @reservation = Reservation.find(params[:id])
      @reservation.update(reservation_params)
      redirect_to reservations_path
  end

  def index
    @reservations = Reservation.all
  end

  def show

    @reservation = Reservation.find(params[:id])
    @activity = Activity.find(@reservation.activity_id)
    @user = User.find(@reservation.user_id)
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    # flash[:notice] = "Your Reservation #{@reservation} has been canceled"
    redirect_to reservations_path
  end

  private

  def reservation_params

    params.require(:reservation).permit(:location, :capacity, :price, :datetime, :user_id, :activity_id)
    
  end

end
