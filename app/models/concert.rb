class Concert < ActiveRecord::Base
  attr_accessible :city, :date_time, :description, :location, :name, :price
  
  has_many :participate , :foreign_key => "concert_id"
  belongs_to :band
end
