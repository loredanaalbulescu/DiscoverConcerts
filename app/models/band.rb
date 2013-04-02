class Band < ActiveRecord::Base
  attr_accessible :city, :description, :fb_id, :genre, :name
  
    has_many :favorite, :foreign_key => "band_id"
    has_many :concert, :foreign_key => "band_id"
end
