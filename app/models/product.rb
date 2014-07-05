# coding: utf-8
class Product < ActiveRecord::Base
  validates_presence_of :name, :description, :image
  validates_presence_of :country_id, message: "No se ha encontrado el país de procedencia."
  mount_uploader :image, ProductImageUploader

  belongs_to :country

  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  def slug_candidates
    [ :name, [:name, :id]]
  end
end
