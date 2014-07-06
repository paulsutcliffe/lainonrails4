class SubscribersController < InheritedResources::Base
  before_action :set_subscriber, only: [:show, :edit, :update, :destroy]

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
