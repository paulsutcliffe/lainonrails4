class CountriesController < ApplicationController
  before_filter :detect_ip_location

  def index
  end

  def detect_ip_location
    @country_code = request.location.country_code
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

end
