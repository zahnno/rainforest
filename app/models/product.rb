class Product < ActiveRecord::Base
	attr_accessor :price_in_dollars
	validates :description, :name, presence: true
	
	# validates :price_in_cents, numericality: true

    has_many :reviews
    has_many :users, through: :reviews

    before_save :convert_price
  def convert_price
  	self.price_in_cents = self.price_in_dollars.to_f * 100
  end

  def formatted_price
	price_in_dollars = price_in_cents.to_f / 100
	sprintf("%.2f", price_in_dollars)
  end

end
