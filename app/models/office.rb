# coding: utf-8
class Office < ActiveRecord::Base
  validates_presence_of :name, :address, :image
  validates_presence_of :country_id, message: "No se ha encontrado el país de procedencia."
end
