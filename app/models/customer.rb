class Customer < ActiveRecord::Base
	attr_accessible :address, :city, :country, :email, :first_name, :last_name, :postal_code, :province_id

	has_many :orders
	belongs_to :province

	validates :first_name, :last_name, :address, :city, :postal_code, :email, :country, :province_id, :presence => true
  
  def name
  	return self.first_name + " " + self.last_name 
  end 
end
