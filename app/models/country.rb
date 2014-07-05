# coding: utf-8
class Country < ActiveRecord::Base
  validates_presence_of :name, :code
  validates_uniqueness_of :code
  has_many :products
  has_many :testimonies

  COUNTRIES = { "Perú"        => "pe",
                "Costa Rica"  => "cr",
                "Uruguay"     => "uy",
                "Bolivia"     => "bo",
                "El Salvador" => "sv",
                "Guatemala"   => "gt"
              }

  def self.code_available? locale
    find_by( code: locale ) rescue nil
  end
end
