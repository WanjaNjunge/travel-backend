class BookingsController < ApplicationController
  before_action :authorized
  before_action :set_booking, only: %i[ show update destroy ]

  # GET /bookings
  def index
    @bookings = Booking.where user: @user.id
   

    render json: @bookings, status: :ok
  end

  # GET /bookings/1
  def show
    render json: @booking, status: :ok
  end

  # POST /bookings
  def create
    @booking = Booking.new(booking_params)
    @booking.user = @user
    

    if @booking.save
      render json: @booking, status: :ok
    else
      render json: { data: @booking.errors.full_messages, status: "failed" }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bookings/1
  def update
    if @booking.update(booking_params)
      render json: @booking, status: :ok
    else
      render json: { data: @booking.errors.full_messages, status: "failed" }, status: :unprocessable_entity
    end
  end

  # DELETE /bookings/1
  def destroy
    if @booking.destroy
      render json: { data: 'Booking deleted successfully', status: 'success' }, status: :ok
    else
      render json: { data: 'Something went wrong', status: 'failed' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
      

    rescue ActiveRecord::RecordNotFound => error
      render json: error.message, status: :unauthorized
    end

    # Only allow a list of trusted parameters through.
    def booking_params
      params.require(:booking).permit(:first_name, :last_name, :email, :phone, :no_of_people, :check_in_date, :check_out_date, :user_id, :travel_package_id)
    end
end