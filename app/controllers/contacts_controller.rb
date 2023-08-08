# app/controllers/contacts_controller.rb

class ContactsController < ApplicationController
    def index
      @contact = Contact.new
    end

    def all
        @contacts = Contact.all
      end
  
    def create
      @contact = Contact.new(contact_params)
  
      if @contact.save
        flash[:success] = 'Contact form submitted successfully'
        redirect_to contacts_path
      else
        flash.now[:error] = @contact.errors.full_messages.join(', ')
        render :index
      end
    end
  
    private
  
    def contact_params
      params.require(:contact).permit(:name, :email, :message)
    end
  end
  
