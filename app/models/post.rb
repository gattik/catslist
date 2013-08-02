class Post < ActiveRecord::Base
	belongs_to :city
	mount_uploader :pic, PicUploader
end
