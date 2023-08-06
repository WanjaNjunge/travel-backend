class UsersController < ApplicationController
  before_action :authorized, only: [:auto_login]
 



  # REGISTER
  def create
    @user = User.create(user_params)
    if @user.valid?
      token = encode_token({user_id: @user.id})
      render json: { user: @user, token: token} 
    else
      render json: {error: "Invalid username or password"}
    end
  end


  # LOGGING IN
  def login
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid username or password"}
    end
  end

  

  def update
    user = User.find(params[:id])
    if user.update(update_user_params)
      @user = user.reload
      render json: { user: @user, message: "User profile updated successfully" }, status: :ok
    else
      render json: { error: user.errors.full_messages }, status: :unprocessable_entity
    end
  end


  def auto_login
    @user = logged_in_user
    render json: @user
  end

  private

  def user_params
    params.permit(:username, :email, :password, :role)
  end

  def update_user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end