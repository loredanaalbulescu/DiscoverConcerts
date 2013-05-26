class Participate < ActiveRecord::Base
  attr_accessible :concert_id, :user_id
  
  belongs_to :concert
  belongs_to :user
  
  def show_by_concert_id(options={})
    Participate.where(concert_id: options[:concert_id])
  end
  
end
