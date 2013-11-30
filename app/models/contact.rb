class Contact < ActiveRecord::Base
  attr_accessible :address, :description, :email, :name, :phone
end
