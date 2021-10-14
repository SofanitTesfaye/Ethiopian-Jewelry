class NecklacesController < ApplicationController
  before_action :set_necklace, only: [:show, :update, :destroy]
  before_action :authorize_request, only: [:create, :update, :destroy]

  # GET /necklaces
  def index
    @necklaces = Necklace.all

    render json: @necklaces, include: :ratings
  end

  # GET /necklaces/1
  def show
    @necklaces = Necklace.all
    render json: @necklace, include: :ratings
  end

  # POST /necklaces
  def create
    @necklace = Necklace.new(necklace_params)
    @necklace.user = @current_user

    if @necklace.save
      render json: @necklace, status: :created
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
