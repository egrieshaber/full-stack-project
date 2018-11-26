# frozen_string_literal: true

class MetalHedsController < ApplicationController
  before_action :set_metal_hed, only: %i[show update destroy]

  # GET /metal_heds
  def index
    @metal_heds = MetalHed.all

    render json: @metal_heds
  end

  # GET /metal_heds/1
  def show
    render json: @metal_hed
  end

  # POST /metal_heds
  def create
    @metal_hed = MetalHed.new(metal_hed_params)

    if @metal_hed.save
      render json: @metal_hed, status: :created, location: @metal_hed
    else
      render json: @metal_hed.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /metal_heds/1
  def update
    if @metal_hed.update(metal_hed_params)
      render json: @metal_hed
    else
      render json: @metal_hed.errors, status: :unprocessable_entity
    end
  end

  # DELETE /metal_heds/1
  def destroy
    @metal_hed.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_metal_hed
    @metal_hed = MetalHed.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def metal_hed_params
    params.require(:metal_hed).permit(:first_name, :last_name, :instrument, :band)
  end
end
