class User < ActiveRecord::Base
  attr_accessible :city, :fb_id, :first_name, :last_name
end
