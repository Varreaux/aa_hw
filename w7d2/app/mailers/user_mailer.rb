class UserMailer < ApplicationMailer

        default from: '99catsadmin@appacademy.io'
      
        def welcome_email(user)
          @user = user
          mail(to: user.email, subject: 'Welcome to 99 Cats!')
        end
      end
      
end
