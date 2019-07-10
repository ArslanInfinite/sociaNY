class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
  end

  def create
   params[:reservation][:user_id]= session[:user_id]
   params[:reservation][:activity_id] = params[:reservation][:activity_id].to_i
   @reservation = Reservation.create!(reservation_params)
   redirect_to reservation_path(@reservation)
    #here is where we subtract class cost from wallet amount
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update(reservation_params)
    redirect_to reservation_path(@reservation)
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
    redirect_to reservations_path
    flash[:notice] = "Your reservation on #{@reservation.datetime} has been canceled"
  end

private

  def reservation_params
    params.require(:reservation).permit(:location, :capacity, :price, :datetime, :user_id, :activity_id)
  end

end
