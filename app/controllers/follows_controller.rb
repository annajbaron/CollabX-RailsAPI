class FollowsController < ApplicationController

  def create
    b = Brand.find params[:brand_id]
    follow = Follow.new(brand: b, user: current_user)
    if follow.save
      render json: follow, status: :created, location: follow
    else
      render json: follow.errors, status: :unprocessable_entity
    end
  end
  
end
