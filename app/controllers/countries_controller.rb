class CountriesController < ApplicationController

  def index
    # @country_code = request.location.country_code
    # remote_ip     = request.remote_ip
    remote_ip = request.env['REMOTE_ADDR']
    data_response = HTTParty.get("http://freegeoip.net/json/#{remote_ip}")
    @country_code = JSON.parse(data_response.body)["country_code"]
    Rails.logger.info "#{data_response}"
    if @country_code == 'PE'
      redirect_to '/pe/'
    else
      redirect_to en_construccion_path
    end
    # case @country_code
    # when "PE"
    #   redirect_to '/pe/'
    # when "BO"
    #   redirect_to '/bo/'
    # when "CR"
    #   redirect_to '/cr/'
    # when "GT"
    #   redirect_to '/gt/'
    # when "SV"
    #   redirect_to '/sv/'
    # when "UY"
    #   redirect_to '/uy/'
    # end
  end

end
