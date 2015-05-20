class UserMailer < ApplicationMailer
	default from: "danielglatstein@gmail.com"

	def welcome_email(user)
		@user = user
		mail(to: @user.email, subject "blaze?")
	end
end
