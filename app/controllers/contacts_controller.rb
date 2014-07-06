class ContactsController < InheritedResources::Base
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def create
    @contact = Contact.new(contact_params)
    @contact.country_id = @country.try(:id)
    create!(:notice => "Su mensaje fue enviado con éxito.") { new_contact_path }
  end

  private

  def set_contact
    @contact = Contact.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit([:first_name, :last_name, :email, :phone, :address, :district, :province, :city, :message, :country_id])
  end

  def permitted_params
    params.permit(:contact => [:first_name, :last_name, :email, :phone, :address, :district, :province, :city, :message, :country_id])
  end

end
