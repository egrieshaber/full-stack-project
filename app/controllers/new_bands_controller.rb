# frozen_string_literal: true

class NewBandsController < OpenReadController
  before_action :set_new_band, only: %i[show update destroy]

  # GET /new_bands
  def index
    @new_bands = NewBand.all

    render json: @new_bands
  end

  # GET /new_bands/1
  def show
    @new_band.update(new_band_params)

    render json: @new_band
  end

  # POST /new_bands
  def create
  # @new_band = NewBand.new(new_band_params)
  @new_band = current_user.new_bands.build(new_band_params)

    if @new_band.save
      render json: @new_band, status: :created, location: @new_band
    else
      render json: @new_band.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /new_bands/1
  def update
    # @new_band = NewBand.find(params[:id])
    # if @new_band = current_user.new_bands.update(new_band_params)
    # binding.pry
    if @new_band.update(new_band_params)
    # if @new_band == current_user.new_bands.update(new_band_params)
    # binding.pry
      render json: @new_band
    else
      # binding.pry
      render json: @new_band.errors, status: :unprocessable_entity
    end
  end

  # DELETE /new_bands/1
  def destroy
    # binding.pry
    @new_band.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_new_band
    # @new_band = NewBand.find(params[:id])
    @new_band = current_user.new_bands.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def new_band_params
    params.require(:new_band).permit(:band_name)
    # params.require(:new_band).permit(:id)
  end
end
