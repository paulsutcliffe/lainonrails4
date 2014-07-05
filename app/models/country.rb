# coding: utf-8
class Country < ActiveRecord::Base
  has_many :products
  has_many :testimonies

  def self.code_available? locale
    find_by( code: locale ) rescue nil
  end
end
