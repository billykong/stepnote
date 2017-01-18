class ItinerariesController < ApplicationController
  before_action :set_itinerary, only: [:show, :edit, :update, :destroy]

  # GET /itineraries
  def index
    @itineraries = Itinerary.all
  end

  # GET /itineraries/1
  def show
  end

  # GET /itineraries/new
  def new
    @itinerary = Itinerary.new
  end

  # GET /itineraries/1/edit
  def edit
  end

  # POST /itineraries
  def create
    @itinerary = Itinerary.new(itinerary_params)

    if @itinerary.save
      redirect_to @itinerary, notice: 'Itinerary was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /itineraries/1
  def update
    if @itinerary.update(itinerary_params)
      redirect_to @itinerary, notice: 'Itinerary was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /itineraries/1
  def destroy
    @itinerary.destroy
    redirect_to itineraries_url, notice: 'Itinerary was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_itinerary
      @itinerary = Itinerary.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def itinerary_params
      params.require(:itinerary).permit(:title, :content)
    end
end
