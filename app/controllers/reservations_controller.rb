class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
      @reservation = Reservation.find(params[:id])
      @reservation.update(reservation_params)
  end

  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  private

  def reservation_params
    params.require(:reservtion).permit(:location, :capacity, :price, :datetime, :user_id, :activity_id)
  end
end
