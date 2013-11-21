class Province < ActiveRecord::Base
	attr_accessible :gst_rate, :hst_rate, :name, :pst_rate

	has_many :customers

  validates :name, :gst_rate, :pst_rate, :hst_rate, :presence => true
end
