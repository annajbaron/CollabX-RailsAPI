class CollaboratorsController < ApplicationController
  before_action :find_collaborator, only: [:destroy]

  def index
    @collaborators = Collaborator.where(user_id: current_user)
    p current_user
    p @collaborators
    p Collaborator.all

    brand_ids = @collaborators.map{ |collaborator| collaborator.brand_id }
    p 'new result below'
    p brand_ids

    # brand_ids = [3,2,56,86] -> brand ids
    render json: @collaborators
    # render json: brand_ids
  end

  def destroy
    @collaborator.destroy
  end

  def create
    # b = Brand.find params[:brand_id]
    collaborator = Collaborator.new(collaborator_params)
    if collaborator.save
      render json: collaborator, status: :created, location: collaborator
    else
      render json: collaborator.errors, status: :unprocessable_entity
    end
  end

  private

  def find_collaborator
    @collaborator = Collaborator.find params[:id]
  end

  def collaborator_params
    params.require(:collaborator).permit(:brand_id, :collection_id)
  end
end
