class Genre < ActiveRecord::Base
  attr_accessible :name

  has_many :band, :foreign_key => "genre_id"
end
