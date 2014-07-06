# coding: utf-8
class Computest < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :email, :phone, :gender, :height, :weight
  validates :email, email: true

  validates :first_name, :length => { :maximum => 50 }
  validates :last_name, :length => { :maximum => 50 }
  validates :phone, :length => { :maximum => 20 }
  validates :email, :length => { :maximum => 100 }

  validates :height, :numericality => { :greater_than => 1, :less_than => 3 }
  validates :height, :format => { :with => /\d{1,2}\.\d{1,2}/,
      :message => "tiene que ser en metros, por ejemplo: 1.76" }

  validates :weight, :numericality => { :greater_than => 25, :less_than => 210 }
  validates :weight, :format => { :with => /\d{2,3}/,
          :message => "tiene que ser en kilos, por ejemplo: 75" }
end
