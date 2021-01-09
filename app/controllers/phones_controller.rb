class PhonesController < ApplicationController
    # GET /phones/1
    before_action :set_phones
    def show
        render json: @phones
    end

    
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_phones
        @phones = Contact.find(params[:contact_id]).phones
    end
end