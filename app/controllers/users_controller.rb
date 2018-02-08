class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:create]

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params

    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def update
    if @user.update user_params
      render json: @user
    else
      render json: { error: @user.errors.full_messages }
    end
  end

  def destroy
    if @user.destroy
      render json: { message: 'Successfully deleted!!!' }
    else
      head :bad_request
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password,
      :password_confirmation
    )
  end
end
