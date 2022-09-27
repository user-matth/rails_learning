class UserMailer < ApplicationMailer
    def welcome_email(user_id)
        @user = User.find(user_id)
        @url = 'http://example.com/login'
        mail(to: @user.email, subject: 'Welcome to My Ruby Application')
    end
    
    def birthday(user_id)
        @user = User.find(user_id)
        mail(to: @user.email, subject: "Happy Birthday #{@user.email}")
    end
end
