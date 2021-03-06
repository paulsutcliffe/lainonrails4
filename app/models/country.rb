# coding: utf-8
class Country < ActiveRecord::Base
  include CommonScopes
  validates_presence_of :name, :code
  validates_uniqueness_of :code
  has_many :articles
  has_many :products
  has_many :testimonies
  has_many :offices
  has_many :subscribers
  has_many :computests
  has_many :contacts
  has_many :banners
  has_many :opportunities

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
