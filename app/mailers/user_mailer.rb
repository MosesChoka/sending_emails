class UserMailer < ApplicationMailer
  default from: "test@example.com"

  def new_mail
    @user = params[:user]
    attachments["mi_passporte.jpg"]=File.read("app/assets/images/mi_passporte.jpg")
    attachments.inline["email_header.png"] = File.read("app/assets/images/email_header.png")
    mail(to: @user.email, subject: "Welcome to My Awesome Site!")
  end
end
