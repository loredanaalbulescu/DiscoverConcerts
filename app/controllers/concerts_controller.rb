class ConcertsController < ApplicationController
  # GET /concerts
  # GET /concerts.json
   respond_to :html, :json
   
  def index
    @concerts = Concert.all
    respond_with @concerts
  end

  def show_by_band_id
	@concerts = Concert.find_by_band_id(params[:band_id])
	@all = @concerts.show_by_band_id({:band_id => params[:band_id]} )
    respond_with @all
  end

  def show_participates
    @concert  = Concert.last()
    @concerts = @concert.show_participates({:user_id => params[:user_id]})
    respond_with @concerts
  end

  # GET /concerts/1
  # GET /concerts/1.json
  def show
    @concert = Concert.find(params[:id])
	respond_with @concert
  end

  # GET /concerts/new
  # GET /concerts/new.json
  def new
    @concert = Concert.new
	respond_with @concert
  end

  # GET /concerts/1/edit
  def edit
    @concert = Concert.find(params[:id])
    respond_with @concerts
  end

  # POST /concerts
  # POST /concerts.json
  def create
    @concert = Concert.new(params[:concert])
	@concert.save
    respond_with @concert
  end

  # PUT /concerts/1
  # PUT /concerts/1.json
  def update
    @concert = Concert.find(params[:id])
	@concert.update_attributes(params[:concert])
    respond_with @concert
  end

  # DELETE /concerts/1
  # DELETE /concerts/1.json
  def destroy
    @concert = Concert.find(params[:id])
    @concert.destroy
    respond_with @concert
  end
end
