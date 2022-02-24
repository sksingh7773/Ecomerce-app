class ContactsController < ApplicationController
	def new
		@contact = Contact.new
	end

	def create
    @contact = Contact.new(contact_params)

    if @contact.save
    	ListMailer.send_order(@contact).deliver_later
      flash.now[:notice] = 'Thank you for your message!'
      redirect_to root_path
    else
      render :new
	  end
	end

	

	private

	def contact_params
		params.require(:contact).permit(:name, :email, :query, :phone)
	end

end
