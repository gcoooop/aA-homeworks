class UserMailer < ApplicationMailer
  default from: "everybody@appacademy.io"

  def welcome_email(user)
    @user = user
    @url = "http://localhost:3000"
    mail(to: "everybody@appacademy.io", subject: "WELCOME TO THE SITE(?)")
  end
end
