# coding: utf-8
class Article < ActiveRecord::Base
  validates_presence_of :title, :content, :image
  mount_uploader :image, ArticleImageUploader

  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]
end
