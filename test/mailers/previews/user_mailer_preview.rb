# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def new_mail
    UserMailer.with(user: User.last).new_mail
  end
end
