class FollowsController < ApplicationController
  before_action :find_follow, only: [:destroy]

  def index
    @follows = Follow.where(user_id: current_user)
    p current_user
    p @follows
    p Follow.all

    brand_ids = @follows.map{ |follow| follow.brand_id }
    p 'new result below'
    p brand_ids

    # brand_ids = [3,2,56,86] -> brand ids
    render json: @follows
    # render json: brand_ids
  end

  def destroy
    @follow.destroy
  end

  def create
    b = Brand.find params[:brand_id]
    follow = Follow.new(brand: b, user: current_user)
    if follow.save
      render json: follow, status: :created, location: follow
    else
      render json: follow.errors, status: :unprocessable_entity
    end
  end

  private

  def find_follow
    @follow = Follow.find params[:id]
  end

end
