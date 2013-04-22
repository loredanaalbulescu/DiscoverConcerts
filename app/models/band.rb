class Band < ActiveRecord::Base
  attr_accessible :city, :description, :fb_id, :genre_id, :name
  
  has_many :favorite, :foreign_key => "band_id"
  has_many :concert, :foreign_key => "band_id"
  belongs_to :genre

  def show_by_genre_id(options={})
    Band.where(genre_id: options[:genre_id])
  end

  def show_same_genre(options={})
    #logger.info("band.rb genre = " + options[:genre])
    Band.where(genre: options[:genre]).select(:name)
  end

  def show_favorites(options={})
	Band.joins('JOIN favorites ON bands.fb_id = favorites.band_id').where('favorites.user_id = ' + options[:user_id])
  end
end
