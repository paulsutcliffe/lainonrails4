class ContactMailer < ActionMailer::Base
  default :from => "info@lainadelgaza.net"

  def contact_confirmation contact
    @contact = contact
    mail  :to => "#{contact.first_name} #{contact.last_name} <#{contact.email}>",
      :subject => "LAIN Adelgaza"
  end

  def new_contact contact, locale
    @contact  = contact
    country   = {
      "bo" => ["Bolivia", "lain1004scz@entelnet.bo"],
      "cr" => ["Costa Rica", "contactoweb.cr@laininternacional.com"],
      "gt" => ["Guatemala", "lessguatemala@terra.com.gt"],
      "pe" => ["Perú", "contacto@lainadelgaza.net"],
      "sv" => ["El Salvador", "info.elsalvador@laininternacional.com"],
      "uy" => ["Uruguay", "lainuru@montevideo.com.uy"] }

    if country[locale]
      @country_name = country[locale][0]
      country_email = country[locale][1]

      mail :to => country_email,
        :subject => "Mensaje desde la web de LAIN #{@country_name}"
    end
  end
end
