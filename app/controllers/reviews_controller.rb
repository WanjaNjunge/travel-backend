class ReviewsController < ApplicationController
  before_action :authorized, except: [:index, :show]
  before_action :set_review, only: %i[ show update destroy ]

  # GET /reviews
  def index
    @reviews = Review.all

    render json: @reviews, status: :ok
  end

  # GET /reviews/1
  def show
    render json: @review, status: :ok
  end

  # POST /reviews
  def create
    @review = Review.new(review_params)
    @review.user = @user

    if @review.save
      render json: @review, status: :ok
    else
      render json: { data: @review.errors.full_messages, status: "failed" }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reviews/1
  def update
    if @review.update(review_params)
      render json: @review
    else
      render json: { data: @review.errors.full_messages, status: "failed" }, status: :unprocessable_entity
    end
  end

  # DELETE /reviews/1
  def destroy
    if @review.destroy
      render json: { data: 'Review deleted successfully', status: 'success' }, status: :ok
    else
      render json: { data: 'Something went wrong', status: 'failed' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])

    rescue ActiveRecord::RecordNotFound => error
      render json: error.message, status: :unauthorized
    
    end

    # Only allow a list of trusted parameters through.
    def review_params
      params.require(:review).permit(:name, :comment, :rating, :user_id, :travel_package_id)
    end
end