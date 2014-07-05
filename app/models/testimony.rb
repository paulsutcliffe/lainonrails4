# coding: utf-8
class Testimony < ActiveRecord::Base

  validates_presence_of :name, :testimony_type, :image

  extend FriendlyId
  friendly_id :name, use: :slugged

  TYPES = { "Antes y después" => "antesydespues", "Video" => "video" }
end
