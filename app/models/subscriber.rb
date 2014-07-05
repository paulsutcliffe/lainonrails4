# coding: utf-8
class Subscriber < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :email, :country_id
  validates :email, email: true
  validates_uniqueness_of :email
end
