class InicioController < ApplicationController
  require "uri"
  require 'net/http'

  def index
    @larger_banners = @country.banners.larger
    @medium_banners = @country.banners.medium
    @small_banners  = @country.banners.small

    @telefonos = Office.all

    if params[:dest]
      HTTParty.get('http://proxy.lemmor.com/VSServices/callback.aspx?source=00001825&dest=' + params[:dest] + '&login=012365&password=1653$&type=1')
      flash[:notice] = "Estamos llamándote, atento a tu teléfono."
      Rails.logger.info "Estamos llamándote, atento a tu teléfono."
    end
  end

  def free_call_post
    url = URI.parse('https://sv1.soamisa.com:8901/cgi/web/receive.pl')
    req = Net::HTTP::Post.new(url.path)
    req.form_data = params
    req.basic_auth url.user, url.password if url.user
    con = Net::HTTP.new(url.host, url.port)
    con.use_ssl = true
    con.start {|http| http.request(req)}
    redirect_to home_path, {notice: "Estamos llamándote, atento a tu teléfono."}
  end

  def free_call

  end

  def en_construccion
    @contact = Contact.new
    render(:layout => "layouts/clean")
  end

end
