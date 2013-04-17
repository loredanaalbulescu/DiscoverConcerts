class Concert < ActiveRecord::Base
  attr_accessible :city, :date_time, :description, :location, :name, :price, :band_id
  
  has_many :participate , :foreign_key => "concert_id"
  belongs_to :band

  def show_by_band_id(options={})
    Concert.where(band_id: options[:band_id])
  end
end
