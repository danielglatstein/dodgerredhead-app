class Post < ActiveRecord::Base
	validates :title, presence:true, length: {minimum: 5}
	validates :body, presence:true
	validates :category, presence:true


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