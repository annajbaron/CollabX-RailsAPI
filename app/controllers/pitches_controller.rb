class PitchesController < ApplicationController
  before_action :set_pitch, only: [:show, :update, :destroy]

  # GET /pitches
  def index
    @pitches = Pitch.all

    render json: @pitches
  end

  # GET /pitches/1
  def show
    render json: @pitch
  end

  # POST /pitches
  def create
    @pitch = Pitch.new(pitch_params)

    if @pitch.save
      render json: @pitch, status: :created
    else
      render json: @pitch.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pitches/1
  def update
    if @pitch.update(pitch_params)
      render json: @pitch
    else
      render json: @pitch.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pitches/1
  def destroy
    @pitch.destroy
  end

  private
    def set_pitch
      @pitch = Pitch.find(params[:id])
    end

    def pitch_params
      params.require(:pitch).permit(:brand_1, :brand_2)
    end
end
