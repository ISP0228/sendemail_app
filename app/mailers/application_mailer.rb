class ApplicationMailer < ActionMailer::Base
  default from: '塾名',
          bcc:  "sent@gmail.com"
          reply_to: "reply@gmail.com"
  layout 'mailer'
end
