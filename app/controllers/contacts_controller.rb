class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_paramas)
    if @contact.save
      flash[:success] = "Message Sent."
      redirect_to new_contact_path
    else
      flash[:error] = @contact.errors.full_messages.join(", ")
      redirect_to new_contact_path
    end
  end
  
  private 
    def contact_paramas
      params.require(:contact).permit(:name, :email, :comments)
    end
end