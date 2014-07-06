# coding: utf-8
class Article < ActiveRecord::Base
  include CommonScopes
  validates_presence_of :title, :content, :image
  mount_uploader :image, ArticleImageUploader

  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]

  scope :ordered,   -> { order(:created_at => :desc) }

  def slug_candidates
    [ :title, [:title, :id]]
  end
end
