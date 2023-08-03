class TravelPackagesController < ApplicationController
  before_action :authorized, except: [:index, :show]
  before_action :set_travel_package, only: %i[ show update destroy ]

  # GET /travel_packages
  def index
    @travel_packages = TravelPackage.all

    render json: @travel_packages, status: :ok
  end

  # GET /travel_packages/1
  def show
    render json: @travel_package, status: :ok
  end

  # POST /travel_packages
  def create
    @travel_package = TravelPackage.new(travel_package_params)
    @travel_package.user = @user
    

    if @travel_package.save
      render json: @travel_package, status: :ok
    else
      render json: { data: @travel_package.errors.full_messages, status: "failed" }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /travel_packages/1
  def update
    if @travel_package.update(travel_package_params)
      render json: @travel_package, status: :ok
    else
      render json: { data: @travel_package.errors.full_messages, status: "failed" }, status: :unprocessable_entity
    end
  end

  # DELETE /travel_packages/1
  def destroy
    if @travel_package.destroy
      render json: { data: 'Travel package deleted successfully', status: 'sucess' }, status: :ok
    else
      render json: { data: 'Something went wrong', status: 'failed' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel_package
      @travel_package = TravelPackage.find(params[:id])

    rescue ActiveRecord::RecordNotFound => error
      render json: error.message, status: :unauthorized
    end

    # Only allow a list of trusted parameters through.
    def travel_package_params
      params.require(:travel_package).permit(:name, :description, :image_url, :pricing, :itinerary, :booking_status, :user_id, :destination_id)
    end
end