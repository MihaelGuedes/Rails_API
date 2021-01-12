class PhonesController < ApplicationController
    # GET /phones/1
    before_action :set_contact

    def show
        render json: @contact.phones
    end

    # POST /contacts/:contact_id/phone
    def create
        @contact.phones << Phone.new(phone_params)

        if @contact.save
            render json: @contact.phones, status: :created, location: contact_phones_url(@contact)
        else
            render json: @contact.errors, status: :unprocessable_entity
        end
    end
    
    # PATCH /contacts/:contact_id/phone
    def update
        if @contact.phones.update(phone_params)
            render json: @contact.phones
        else
            render json: @contact.errors, status: :unprocessable_entity
        end
    end

    # DELETE /contacts/:contact_id/phone
    def destroy
        phone.find(phone_params[:id])
        phone.destroy
    end

    
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
        @contact = Contact.find(params[:contact_id])
    end

    def phone_params
        ActiveModelSerializers::Deserialization.jsonapi_parse(params)
    end
end