class NecklacesController < ApplicationController
  before_action :set_necklace, only: [:show, :update, :destroy]

  # GET /necklaces
  def index
    @necklaces = Necklace.all

    render json: @necklaces
  end

  # GET /necklaces/1
  def show
    render json: @necklace
  end

  # POST /necklaces
  def create
    @necklace = Necklace.new(necklace_params)

    if @necklace.save
      render json: @necklace, status: :created, location: @necklace
    else
      render json: @necklace.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /necklaces/1
  def update
    if @necklace.update(necklace_params)
      render json: @necklace
    else
      render json: @necklace.errors, status: :unprocessable_entity
    end
  end

  # DELETE /necklaces/1
  def destroy
    @necklace.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_necklace
      @necklace = Necklace.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def necklace_params
      params.require(:necklace).permit(:name, :image_url, :price, :description)
    end
end
