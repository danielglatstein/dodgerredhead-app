class Post < ActiveRecord::Base

 	mount_uploader :image, ImageUploader
 	mount_uploader :video, VideoUploader
 	

	validates :title, presence:true, length: {minimum: 5}
	validates :body, presence:true
	validates :category, presence:true
	
	def set_success(format, opts)
    	self.success = true
  	end



	VALID_CATEGORIES = [
		"Salsa",
		"2014 Trip",
		"Andavabatu",
		"Ranamofana",
		"Morandava",
		"Crocodiles for Husbands",
		"Video",
		"Photography",
		"Painting",
	]

end
