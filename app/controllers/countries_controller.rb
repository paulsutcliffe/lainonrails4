class CountriesController < ApplicationController
  before_filter :checklocale

  def index
  end

  def checklocale
    I18n.locale = I18nData.country_code(request.location.country)
    redirect_to home_path
  end
end
