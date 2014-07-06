# encoding: utf-8
require "faker"

FactoryGirl.define do
  factory :page do
    title   { Faker::Lorem.sentence }
    content { Faker::Lorem.paragraph }

    trait :lain do
      title   "LAIN"
      content "Contenido para página Lain."
    end

    trait :metodo do
      title   "Método"
      content "Contenido para página Método."
    end

    trait :privacy_policy do
      title   "Políticas de privacidad"
      content '<p>Tus datos personales registrados en Lainadelgaza.net no ser&aacute;n traspasados por ninguna modalidad a Terceros. Se maneja la informaci&oacute;n en absolutamente confidencial y conforme lo dispone la legislaci&oacute;n vigente en el Per&uacute;</p><h3>Pol&iacute;tica de Declaraci&oacute;n de Privacidad PS021-01</h3><p>Esta pol&iacute;tica corresponde a la Declaraci&oacute;n de Privacidad de Lainadelgaza.net expuesta en sitios Internet. (Revisi&oacute;n 1.1 (29 de Agosto 2002)).</p><h3>Compromiso con la Seguridad</h3><p>Lainadelgaza.net hace esta declaraci&oacute;n de seguridad y privacidad en orden a demostrar y comunicar su compromiso con una pr&aacute;ctica de negocios de alto nivel &eacute;tico y dotada de los controles internos apropiados.</p><h3>Informaci&oacute;n requerida del usuario</h3><p>El formulario &quot;Contacto&quot; de Lainadelgaza.net solicita a los usuarios informaci&oacute;n personal como su nombre, email, direcci&oacute;n y n&uacute;mero telef&oacute;nico. Esta es usada para responder consultas acerca de productos y servicios, para despachar pedidos . Bajo ninguna circunstancia, la informaci&oacute;n es compartida con terceros.</p><h3>Datos Personales</h3><p>El usuario dispondr&aacute; en todo momento de los derechos de informaci&oacute;n, rectificaci&oacute;n y cancelaci&oacute;n de sus datos personales. Asimismo, si deseas modificar tu informaci&oacute;n personal, lo puedes hacer utilizando algunos de los siguientes canales de comunicaci&oacute;n Llenar el formulario de Contacto Llamar al tel&eacute;fono 206-3400 en horas de oficina.</p><h3>Desafiliaci&oacute;n</h3><p>Una vez dejada la informaci&oacute;n, usted podr&aacute; modificarla o eliminarla de nuestra base de datos ingresando a<a href=\"http://www.lainadelgaza.net/bo/usuarios/registro/edit\" style=\"text-decoration: none; -webkit-transition: all 0.3s ease-out; transition: all 0.3s ease-out; color: rgb(45, 45, 45);\">http://www.lainadelgaza.net/usuarios/registro/edit</a></p>'
    end
  end
end
