# coding: utf-8
class Contact < ActiveRecord::Base
  PHONE_REGEX = /\(?([0-9]{2,4})\)?[-. ]?([0-9]{3,4})[-. ]?([0-9]{0,4})/
  validates_presence_of :first_name, :last_name, :email, :phone, :message
  validates :email, email: true
  validates :first_name, :length => { :maximum => 50 }
  validates :last_name, :length => { :maximum => 50 }
  validates :email, :length => { :maximum => 100 }
  validates :phone, :length => { :maximum => 12 },
    :format => PHONE_REGEX
  validates_presence_of :country_id, message: "No se ha encontrado el país de procedencia."

  belongs_to :country
end
