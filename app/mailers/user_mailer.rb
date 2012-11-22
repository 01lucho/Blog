class UserMailer < ActionMailer::Base
  default :from => "luis-basmar@hotmail.com"

  def registration_confirmation(comment)
    mail(:to => comment.post.user.email, :subject => "Registered")
  end

  def registration2_confirmation(comment)
    mail(:to => comment.post.user.email, :subject => "Registered")
  end
end
