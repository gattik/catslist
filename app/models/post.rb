class Post < ActiveRecord::Base
	belongs_to :city
	belongs_to :category
	mount_uploader :pic, PicUploader
end
