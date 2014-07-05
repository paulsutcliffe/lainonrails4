# coding: utf-8
class Article < ActiveRecord::Base
  validates_presence_of :title, :content, :image
  mount_uploader :image, ArticleImageUploader

  belongs_to :country

  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]

  def slug_candidates
    [ :title, [:title, :id]]
  end
end
