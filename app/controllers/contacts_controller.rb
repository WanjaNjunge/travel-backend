# app/controllers/contacts_controller.rb

class ContactsController < ApplicationController
    def create
      @contact = Contact.new(contact_params)
  
      if @contact.save
        render json: { message: 'Contact form submitted successfully' }, status: :ok
      else
        render json: { errors: @contact.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    private
  
    def contact_params
      params.require(:contact).permit(:name, :email, :message)
    end
  end
  