class BandsController < ApplicationController
  # GET /bands
  # GET /bands.json
   respond_to :html, :json
   
  def index
    @bands = Band.all
	respond_with @bands
  end

  # GET /bands/1
  # GET /bands/1.json
  def show
    @band = Band.find(params[:id])
    respond_with @band
  end

  # GET /bands/new
  # GET /bands/new.json
  def new
    @band = Band.new
	respond_with @band
  end

  # GET /bands/1/edit
  def edit
    @band = Band.find(params[:id])
    respond_with @band
  end

  # POST /bands
  # POST /bands.json
  def create
    @band = Band.new(params[:band])
    @same_fb_id = Band.find_by_fb_id(@band.fb_id)
    if @same_fb_id == nil
      @band.save
    end
    respond_with @band
  end

  # PUT /bands/1
  # PUT /bands/1.json
  def update
    @band = Band.find(params[:id])
	@band.update_attributes(params[:band])
    respond_with @band
  end

  # DELETE /bands/1
  # DELETE /bands/1.json
  def destroy
    @band = Band.find(params[:id])
    @band.destroy
	respond_with @band
  end
end
