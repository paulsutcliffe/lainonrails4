class SubscribersController < InheritedResources::Base
  load_and_authorize_resource
  skip_load_resource :only => [:create]
  before_action :set_subscriber, only: [:show, :edit, :update, :destroy]

  def index
    @subscribers = @country.subscribers.ordered.page(params[:page] || 1).per(20) if @country
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    @subscriber.country_id = @country.try(:id)
    create!(notice: "Su suscripción fue guardada correctamente.")
  end

  def update
    @subscriber.country_id = @country.try(:id)
    update!(:notice => "Suscripción actualizada correctamente.")
  end

  private

  def set_subscriber
    @subscriber = Subscriber.find(params[:id])
  end

  def subscriber_params
    params.require(:subscriber).permit([:first_name, :last_name, :email, :phone, :country_id, :privacy_policy])
  end

  def permitted_params
    params.permit(:subscriber => [:first_name, :last_name, :email, :phone, :country_id, :privacy_policy])
  end

end
