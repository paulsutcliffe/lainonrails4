# coding: utf-8
class Subscriber < ActiveRecord::Base
  include CommonScopes
  validates_presence_of :first_name, :last_name, :email, :country_id
  validates :email, email: true
  validates_uniqueness_of :email

  belongs_to :country

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end
end
