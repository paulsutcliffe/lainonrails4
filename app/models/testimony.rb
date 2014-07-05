# coding: utf-8
class Testimony < ActiveRecord::Base
  validates_presence_of :name, :testimony_type, :image
  validates_presence_of :country_id, message: "No se ha encontrado el país de procedencia."
  mount_uploader :image, TestimonyImageUploader

  belongs_to :country

  extend FriendlyId
  friendly_id :name, use: :slugged

  def slug_candidates
    [ :name, [:name, :id]]
  end

  TYPES = { "Antes y después" => "antesydespues", "Video" => "video" }
end
