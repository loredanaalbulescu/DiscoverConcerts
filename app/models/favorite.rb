class Favorite < ActiveRecord::Base
  attr_accessible :band_id, :user_id

  belongs_to :user
  belongs_to :band	

  def show_favorites(options={})
    Favorite.where(user_id: options[:user_id])
  end
end
