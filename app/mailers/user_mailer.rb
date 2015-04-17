class UserMailer < ActionMailer::Base
  #require 'tmail'
  #require 'kconv'

  default from: "from@example.com"
  def receive(email)
    #mailadd = TMail::Mail.parse(email)

    from = email.from[0]
    subject = email.subject
    body = email.body.raw_source

    mail = Email.new(from: from, subject: subject, body: body)
    mail.save

  end
end
