class PagesController < ApplicationController

	def about 
	end

	def salsa
		@salsa_posts = Post.where(category: "salsa")
	end
	
	def zara_aina
		@morandava = Post.where(category: "salsa")
		@photo = Post.where(category: "salsa")
	end
end
