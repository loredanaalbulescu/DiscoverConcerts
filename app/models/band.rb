class Band < ActiveRecord::Base
  attr_accessible :city, :description, :fb_id, :genre, :name
  
  has_many :favorite, :foreign_key => "band_id"
  has_many :concert, :foreign_key => "band_id"

  def show_by_genre(options={})
    Band.where(genre: options[:genre])
  end

  def show_same_genre(options={})
    #logger.info("band.rb genre = " + options[:genre])
    Band.where(genre: options[:genre]).select(:name)
  end
end
