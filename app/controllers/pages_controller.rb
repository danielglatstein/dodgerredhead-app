class PagesController < ApplicationController

	def about 
	end

	def salsa
		@salsa_posts = Post.where(category: "Salsa")
	end
	 
	def zara_aina
		@morandava = Post.where(category: "Morandava")
		@trip = Post.where(category: "2014 Trip")
		@andavabatu = Post.where(category: "Andavabatu")
		@ranamofana = Post.where(category: "Ranamofana")
		@crocodiles = Post.where(category: "Crocodiles for Husbands")
	end

	def artwork
		@video= Post.where(category: "Video")
		@photography= Post.where(category: "Photography")
		@painting= Post.where(category: "Painting")
	end
end
