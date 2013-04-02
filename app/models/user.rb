class User < ActiveRecord::Base
  attr_accessible :city, :fb_id, :first_name, :last_name

  has_many :favorite, :foreign_key => "user_id"
  has_many :participare, :foreign_key => "user_id"
end
