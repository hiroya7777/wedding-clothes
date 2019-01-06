class MessageMailer < ApplicationMailer
  default to: 'example@gmail.com' 

  def received_email(message)
    @message = message
    mail(subject: 'webサイトよりメッセージが届きました') do |format|
      format.text
    end
  end

end
