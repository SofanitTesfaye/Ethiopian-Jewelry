class RatingsController < ApplicationController
  before_action :authorize_request

  # GET /ratings
  def index
    @necklace = Necklace.find(params[:necklace_id])
    @ratings = Rating.where(necklace_id: @necklace.id)

    render json: @ratings, include: :necklace
  end

  # GET /ratings/1
  def show
    @necklace = Necklace.find(params[:necklace_id])
    @rating = Rating.where(necklace_id: @necklace.id).find(params[:id])
    render json: @rating, include: :necklace

  end
  
  # adding rating to necklace here
  # POST /necklaces/:necklace_id/ratings
  def create
    @necklace = Necklace.find(params[:necklace_id])
    @rating = Rating.new(rating_params)
    @rating.user = @current_user
    @rating.necklace = @necklace

    if @rating.save
      render json: @rating, status: :created
    else
      render json: @rating.errors, status: :unprocessable_entity
    end
  end

  # PUT /ratings/1
  def update
    @necklace = Necklace.find(params[:necklace_id])
    @rating = Rating.where(necklace_id: @necklace.id).find(params[:id])
    if @rating.update(rating_params)
      render json: @rating
    else
      render json: @rating.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ratings/1
  def destroy
    @necklace = Necklace.find(params[:necklace_id])
    @rating = Rating.where(necklace_id: @necklace.id).find(params[:id])
    @rating.destroy
  end
  
  def add_rating_to_necklace
    @necklace = Nacklace.find(params[:id])
    @rating = Rating.find(params[:rating_id])

    @necklace.ratings << @rating

    render json: @necklace, include: :ratings
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rating
      # @rating = Rating.find(params[:id])
      @rating = Rating.where(necklace_id: @necklace.id).find(params[:id])
    end
    
    # Only allow a list of trusted parameters through.
    def rating_params
      params.require(:rating).permit(:rank, :necklace_id, :user_id)
    end
end
