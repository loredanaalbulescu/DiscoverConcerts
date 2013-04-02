class Concert < ActiveRecord::Base
  attr_accessible :city, :date_time, :description, :location, :name, :price
end
