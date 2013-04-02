class FavoritesController < ApplicationController
  # GET /favorites
  # GET /favorites.json
   respond_to :html, :json
   
  def index
    @favorites = Favorite.all
	respond_with @favorites
  end

  # GET /favorites/1
  # GET /favorites/1.json
  def show
    @favorite = Favorite.find(params[:id])
	respond_with @favorite 
  end

  # GET /favorites/new
  # GET /favorites/new.json
  def new
    @favorite = Favorite.new
    respond_with @favorite 
  end

  # GET /favorites/1/edit
  def edit
    @favorite = Favorite.find(params[:id])
    respond_with @favorite 
  end

  # POST /favorites
  # POST /favorites.json
  def create
    @favorite = Favorite.new(params[:favorite])
    @favorite.save
    respond_with @favorite 
  end

  # PUT /favorites/1
  # PUT /favorites/1.json
  def update
    @favorite = Favorite.find(params[:id])
    @band.update_attributes(params[:favorite])
    respond_with @favorite 
  end

  # DELETE /favorites/1
  # DELETE /favorites/1.json
  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    respond_with @favorite 
  end
end
