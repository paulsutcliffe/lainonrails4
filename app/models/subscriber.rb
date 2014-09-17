# coding: utf-8
class Subscriber < ActiveRecord::Base
  include CommonScopes
  attr_accessor :privacy_policy
  validates_presence_of :first_name, :last_name, :email
  validates_presence_of :country_id, message: "No se ha encontrado el país de procedencia."
  validates :email, email: true
  # validates_uniqueness_of :email
  validates :privacy_policy, acceptance: true

  belongs_to :country

  scope :ordered,   -> { order(:created_at => :desc) }

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end
end
