class BookingsController < ManagersController
  before_action :set_booking, only: %i[ show edit update destroy ]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def destroy
    @booking.destroy

    respond_to do |format|
      format.html { redirect_to bookings_url, notice: "Booking was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_booking
      @booking = Booking.find(params[:id])
    end

    def booking_params
      params.require(:booking).permit(:vehicle_id, :client_id, :waiting_time, :total_value, :start_date, :end_date, :target_payment)
    end
end
