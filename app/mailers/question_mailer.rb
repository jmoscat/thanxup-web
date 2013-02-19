class QuestionMailer < ActionMailer::Base
 default :from => "jorgemoscat@gmail.com"  
  def question_email(wazzup)
  	@wazzup = wazzup
    mail(:to => "cestevezm@gmail.com", :subject => "Hey Charly, nuevo mensaje de la web")
  end
end
