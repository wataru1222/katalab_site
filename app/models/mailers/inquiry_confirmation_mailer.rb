class Mailers::InquiryConfirmationMailer < Mailers::ApplicationMailer
  default :from => 'wataru.terada1222@gmail.com'

  def send_confirmation_email(contact)
    @contact = contact
    mail( :to => @contact.email,
    :subject => 'Katalab - Thank you for your Inquey!' )
  end

  def send_self_email(contact)
    @contact = contact
    mail( :to => 'wataru.terada1222@gmail.com',
    :subject => "Inqyiry: #{@contact.name},#{@contact.created_at}" )
  end
end
