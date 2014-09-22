class CountriesController < InheritedResources::Base
  load_and_authorize_resource
  skip_authorize_resource :only => :index

  skip_before_filter :set_locale, except: :index
  skip_before_filter :set_variables

  def index
    remote_ip = request.env['REMOTE_ADDR']
    data_response = HTTParty.get("http://freegeoip.net/json/#{remote_ip}")
    @country_code = JSON.parse(data_response.body)["country_code"]
    Rails.logger.info "#{data_response}"
    case @country_code
    when "PE"
      redirect_to '/pe/'
    when "BO"
      redirect_to '/bo/'
    when "CR"
      redirect_to '/cr/'
    when "GT"
      redirect_to '/gt/'
    when "SV"
      redirect_to '/sv/'
    when "UY"
      redirect_to '/uy/'
    end
  end

  private

  def permitted_params
    params.permit(:country => [:name, :code, :facebook, :email, :telefono])
  end

end
