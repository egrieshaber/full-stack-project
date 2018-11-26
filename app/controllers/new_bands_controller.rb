class NewBandsController < ApplicationController
  before_action :set_new_band, only: [:show, :update, :destroy]

  # GET /new_bands
  def index
    @new_bands = NewBand.all

    render json: @new_bands
  end

  # GET /new_bands/1
  def show
    render json: @new_band
  end

  # POST /new_bands
  def create
    @new_band = NewBand.new(new_band_params)

    if @new_band.save
      render json: @new_band, status: :created, location: @new_band
    else
      render json: @new_band.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /new_bands/1
  def update
    if @new_band.update(new_band_params)
      render json: @new_band
    else
      render json: @new_band.errors, status: :unprocessable_entity
    end
  end

  # DELETE /new_bands/1
  def destroy
    @new_band.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_band
      @new_band = NewBand.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def new_band_params
      params.require(:new_band).permit(:band_name)
    end
end