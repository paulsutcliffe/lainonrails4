class Product < ActiveRecord::Base
  validates_presence_of :name, :description, :image
  mount_uploader :image, ProductImageUploader
end
