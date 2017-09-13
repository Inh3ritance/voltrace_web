class ContactsController < ApplicationController
def create
  @contact = Contact.new(params[:contact])
  @contact.request = request
  if @contact.deliver
    flash.now[:error] = nil
    flash.now[:notice] = 'Thank you for your message!'
  else
    flash.now[:error] = 'Cannot send message.'
  end
end

end
