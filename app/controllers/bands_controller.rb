class BandsController < ApplicationController
  # GET /bands
  # GET /bands.json
   respond_to :html, :json
   
  def index
    @bands = Band.all
	respond_with @bands
  end

  def show_by_fb_id
    @band = Band.find_by_fb_id(params[:fb_id])
    respond_with @band
  end

  def show_by_genre_id
	@bands = Band.find_by_genre_id(params[:genre_id])
	@all = @bands.show_by_genre_id({:genre_id => params[:genre_id]} )
    respond_with @all
  end

  def show_same_genre
    @bands = Band.find(params[:id])
    @all = @bands.show_same_genre({:genre => params[:genre]} )
    respond_with @all
  end

  def show_favorites
    @band  = Band.last()
    @bands = @band.show_favorites({:user_id => params[:user_id]})
    #logger.info("@favorites = " + @favorites[1]["band_id"]);
    respond_with @bands
  end

  # GET /bands/1
  # GET /bands/1.json
  def show
    #@band = Band.find_by_fb_id(params[:id])
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
