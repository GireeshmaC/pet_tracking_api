# app/controllers/owners_controller.rb
class OwnersController < ApplicationController
  before_action :set_owner, only: [ :show, :update, :destroy, :pets ]

  def index
    render json: Owner.all
  end

  def create
    owner = Owner.new(owner_params)
    if owner.save
      render json: owner, status: :created
    else
      render json: owner.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: @owner
  end

  def update
    if @owner.update(owner_params)
      render json: @owner
    else
      render json: @owner.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @owner.destroy
    head :no_content
  end

  def pets
    render json: @owner.pets
  end

  private

  def set_owner
    @owner = Owner.find(params[:id])
  end

  def owner_params
    params.permit(:name, :email)
  end
end
