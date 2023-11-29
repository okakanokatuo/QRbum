class ContactsController < ApplicationController
    before_action :authenticate_user!
    
    def new
        @contact = Contact.new
    end
    
    def index
        @contact = Contact.new
    end

    def show
        @contact = Contact.all
    end

    def confirm
        @contact = Contact.new(contact_params)
        if @contact.invalid?
        render :new
        end
    end
    
    def back
        @contact = Contact.new(contact_params)
        render :new
    end
    
    def create
        contact = Contact.new(contact_params)

        contact.user_id = current_user.id

        if contact.save!
        redirect_to :action => "index"
        else  redirect_to :action => "index"
        end
    end
    
    private
    def contact_params
        params.require(:contact).permit(:title,:name,:email,:phone_number,:subject,:message)
    end
end
