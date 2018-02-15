class LikesController < ApplicationController
  before_action :find_like, only: [:destroy]

  def index
    @likes = Like.where(user_id: current_user)
    p current_user
    p @likes
    p Like.all

    collection_ids = @likes.map{ |like| like.collection_id }
    p 'new result below'
    p collection_ids

    # collection_ids = [3,2,56,86] -> collection ids
    render json: @likes
    # render json: collection_ids
  end

  def destroy
    @like.destroy
  end

  def create
    c = Collection.find params[:collection_id]
    like = Like.new(collection: c, user: current_user)
    if like.save
      render json: like, status: :created
    else
      render json: like.errors, status: :unprocessable_entity
    end
  end

  private

  def find_like
    @like = Like.find params[:id]
  end
end
