class UserMailer < ApplicationMailer
  default from: 'valuashish97@gmail.com'

 def welcome_email(user_id)
   @user = User.find_by(id: user_id)
   @url  = 'http://example.com/login'
   attachments.inline['logo.png'] = File.read('/home/av/Downloads/logo.png')
   mail(to: @user.email, subject: 'Welcome to My Awesome Site')
 end
end
