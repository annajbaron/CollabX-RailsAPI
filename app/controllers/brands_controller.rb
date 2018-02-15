class BrandsController < ApplicationController
  before_action :set_brand, only: [:show, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  # GET /brands
  def index
    @brands = Brand.all.order(created_at: :asc)

    render json: @brands
  end

  # GET /brands/1
  def show
    render json: @brand
  end

  # POST /brands
  def create
    @brand = Brand.new(brand_params)

    if @brand.save
      render json: @brand, status: :created, location: @brand
    else
      render json: @brand.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /brands/1
  def update
    if @brand.update(brand_params)
      render json: @brand
    else
      render json: @brand.errors, status: :unprocessable_entity
    end
  end

  # DELETE /brands/1
  def destroy
    @brand.destroy
  end

  private
    def set_brand
      @brand = Brand.find(params[:id])
    end

    def brand_params
      params.require(:brand).permit(:name, :founded, :hq, :longitude, :latitude)
    end
end
