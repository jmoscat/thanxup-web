class QuestionMailer < ActionMailer::Base
  default from: "from@example.com"
  def question_email(whatsup)
    @user = user
    @url  = "http://example.com/login"
    mail(:to => user.email, :subject => "Welcome to My Awesome Site")
  end
end
