class ContactsController < InheritedResources::Base
  before_action :set_contact, only: [:show, :edit, :update, :destroy]
  after_filter :send_emails, :only => :create

  def index
    @contacts = @country.contacts.ordered if @country
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.country_id = @country.try(:id)
    create!(:notice => "Su mensaje fue enviado con éxito.") { new_contact_path }
  end

  private

  def send_emails
    if @contact.valid?
      ContactMailer.new_contact(@contact, @locale).deliver
      ContactMailer.contact_confirmation(@contact).deliver
    end
  end

  def set_contact
    @contact = Contact.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit([:first_name, :last_name, :email, :phone, :address, :district, :province, :city, :message, :country_id, :privacy_policy])
  end

  def permitted_params
    params.permit(:contact => [:first_name, :last_name, :email, :phone, :address, :district, :province, :city, :message, :country_id, :privacy_policy])
  end

end
