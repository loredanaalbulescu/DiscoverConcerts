class Participate < ActiveRecord::Base
  attr_accessible :concert_id, :user_id
  
  belongs_to :concert
  belongs_to :user
  
end
