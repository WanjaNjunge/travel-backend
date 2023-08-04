class DestinationsController < ApplicationController
  before_action :set_destination, only: %i[ show update destroy ]
  before_action :authorized, except: [:index, :show]
  before_action :authorized_user, except: [:index, :show]
  

  # GET /destinations
  def index
    @destinations = Destination.all

    render json: @destinations, status: :ok
  end

  # GET /destinations/1
  def show
    render json: @destination, status: :ok
  end

  # POST /destinations
  def create
    @destination = Destination.new(destination_params)
    @destination.user = @user

    if @destination.save
      render json: @destination, status: :ok
    else
      render json: { data: @destination.errors.full_messages, status: "failed" }, status: :unprocessable_entity
    end
  end


  # PATCH/PUT /destinations/1
  def update
    if @destination.update(destination_params)
      render json: @destination, status: :ok
    else
      render json: { data: @destination.errors.full_messages, status: "failed" }, status: :unprocessable_entity
    end
  end

  # DELETE /destinations/1
  def destroy
    if @destination.destroy
      render json: { data: 'Destination deleted successfully', status: 'success' }, status: :ok
    else
      render json: { data: 'Something went wrong', status: 'failed' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_destination
      @destination = Destination.find(params[:id])

    rescue ActiveRecord::RecordNotFound => error
      render json: error.message, status: :unauthorized
    end

    # Only allow a list of trusted parameters through.
    def destination_params
      params.require(:destination).permit(:location, :country, :image_url, :user_id)
    end

    def authorized_user
      case @user.role
      when 'admin'
        # Admins can perform any action
      when 'tour_operator'
        # Tour operators can view destinations, but not perform other actions
        unless ['index', 'show'].include?(action_name)
          render json: { message: 'You are not authorized to perform this action.' }, status: :unauthorized
        end
      when 'traveller'
        # Travellers can view destinations
        unless ['index', 'show'].include?(action_name)
          render json: { message: 'You are not authorized to perform this action.' }, status: :unauthorized
        end
      else
        render json: { message: 'You are not authorized to perform this action.' }, status: :unauthorized
      end
    end

    
end
