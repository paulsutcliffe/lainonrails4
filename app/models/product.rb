# coding: utf-8
class Product < ActiveRecord::Base
  validates_presence_of :name, :description, :image
  mount_uploader :image, ProductImageUploader

  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
end
