class Category < ActiveRecord::Base
	belongs_to :city
	has_many :posts
end
