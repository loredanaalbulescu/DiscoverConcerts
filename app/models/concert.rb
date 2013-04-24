class Concert < ActiveRecord::Base
  attr_accessible :city, :date_time, :description, :location, :name, :price, :band_id
  
  has_many :participate , :foreign_key => "concert_id"
  belongs_to :band

  def show_by_band_id(options={})
    Concert.where(band_id: options[:band_id])
  end

  def show_participates(options={})
	Concert.joins('JOIN participates ON concerts.id = participates.concert_id').where('participates.user_id = \'' + options[:user_id]+'\'')
  end

  def show_participates_past(options={})
	Concert.joins('JOIN participates ON concerts.id = participates.concert_id').where('participates.user_id = \'' + options[:user_id]+'\' and concerts.date_time < \''+Date.today.to_s+'\'')
  end

  def show_participates_future(options={})
	Concert.joins('JOIN participates ON concerts.id = participates.concert_id').where('participates.user_id = \'' + options[:user_id]+'\' and concerts.date_time >= \''+Date.today.to_s+'\'')
  end
end
