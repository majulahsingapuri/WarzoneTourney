class AppMailer < ApplicationMailer
    def notify_user(user)
        @user = user
        mail(to: @user.email, subject: 'hello')
    end
end
