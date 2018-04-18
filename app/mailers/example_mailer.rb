class ExampleMailer < ApplicationMailer
  default from: 'from@example.com'
  def sampleemail(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end
end
