class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_admin
  before_filter :set_locale

  before_filter :set_variables

  def set_variables
    @subscriber = @subscriber ? @subscriber : @country.subscribers.new
    articles_ids = Article.pluck(:id).shuffle[0..1]
    testimonies_ids = Testimony.pluck(:id).shuffle[0..1]
    @last_articles     = Article.where(id: articles_ids)
    @last_testimonies  = Testimony.where(id: testimonies_ids)
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to home_path, :alert => exception.message
  end

  private

  def current_admin
    current_user.present? && current_user.has_role?(:admin) ? current_user : nil
  end

  def set_locale
    params[:locale] ||= I18n.default_locale

    if I18n.available_locales.include? params[:locale].to_sym
      I18n.locale = params[:locale]
    else
      flash.now[:notice] = "#{params[:locale]} translation not available"
      logger.error flash.now[:notice]
      params[:locale] = I18n.default_locale
    end

    @locale  = params[:locale]
    @country = Country.code_available?( @locale )
  end

  def default_url_options(options={})
    logger.debug "default_url_options is passed options: #{options.inspect}\n"
    { :locale => I18n.locale }
  end

  def body_id
    @body_id = params[:controller].parameterize
  end

  def body_class
    @body_class = params[:action].parameterize
  end

  helper_method :body_id
  helper_method :body_class

end
