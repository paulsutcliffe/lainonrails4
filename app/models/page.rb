class Page < ActiveRecord::Base
  include CommonScopes
  validates_presence_of :title, :content

  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]

  def slug_candidates
    [ :title, [:title, :id]]
  end
end
