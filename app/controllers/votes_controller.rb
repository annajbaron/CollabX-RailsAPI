class VotesController < ApplicationController
  before_action :set_vote, only: [:show, :update, :destroy]

  # GET /votes
  def index
    @votes = Vote.all

    render json: @votes
  end

  # GET /votes/1
  def show
    render json: @vote
  end

  # POST /votes
  def create
    pit = Pitch.find params[:pitch_id]
    vote = Vote.new(pitch: pit, user: current_user)
    if vote.save
      render json: vote, status: :created, location: vote
    else
      render json: vote.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /votes/1
  def update
    if @vote.update(vote_params)
      render json: @vote
    else
      render json: @vote.errors, status: :unprocessable_entity
    end
  end

  # DELETE /votes/1
  def destroy
    @vote.destroy
  end

  private
    def set_vote
      @vote = Vote.find(params[:id])
    end

    def vote_params
      params.require(:vote).permit(:user_id, :pitch_id, :is_up)
    end
end
