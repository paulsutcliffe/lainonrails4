# coding: utf-8
class Banner < ActiveRecord::Base
  validates_presence_of :location, :image
  validates_presence_of :country_id, message: "No se ha encontrado el país de procedencia."

  mount_uploader :image, BannerImageUploader

  belongs_to :country

  LOCATIONS = { "Home - principal" => "home_main",
                "Home - medianas"  => "home_medium",
                "Home - pequeñas"  => "home_small"}

  scope :ordered,   -> { order(:created_at => :desc) }
end
