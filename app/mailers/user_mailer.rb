class UserMailer < ApplicationMailer
    
    default :from => 'admin@hamba.com'

    def send_signup_email(user)
        @user = user
        mail(:to => @user.email, :subject => 'Thanks for signing up')
    end

    def send_job_notification_email(move)
        @user = move.job.user
        @move = move
        mail(:to =>'shaun.spinelli@gmail.com', :subject => 'Some one is interersted in your job')
    end
    



end

