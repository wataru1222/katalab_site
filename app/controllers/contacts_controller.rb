class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      InquiryConfirmationMailer.send_confirmation_email(@contact).deliver
      InquiryConfirmationMailer.send_self_email(@contact).deliver
      redirect_to root_path
    end

  end

  private

    def contact_params
      params.require(:contact).permit(:name, :email, :content)
    end

end
