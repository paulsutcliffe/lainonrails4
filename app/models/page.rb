class Page < ActiveRecord::Base
  include CommonScopes

  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]

  def slug_candidates
    [ :title, [:title, :id]]
  end
end
