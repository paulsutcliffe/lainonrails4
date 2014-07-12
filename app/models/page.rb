class Page < ActiveRecord::Base
  include CommonScopes
  validates_presence_of :title, :content

  mount_uploader :imagen, ImagenUploader

  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]

  scope :ordered,   -> { order(:created_at => :desc) }

  def slug_candidates
    [ :title, [:title, :id]]
  end
end
