class UserMailer < ActionMailer::Base
  default from: "from@example.com"
  def receive(email)
    from = email.from[0]

    mail = Email.new(from: from, title: email.title, body: email.body)
    mail.save

  end
end
