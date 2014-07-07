# coding: utf-8
class Opportunity < ActiveRecord::Base
  include CommonScopes
  validates_presence_of :title, :description
  validates_presence_of :country_id, message: "No se ha encontrado el país de procedencia."
  mount_uploader :image, OpportunityImageUploader

  belongs_to :country

  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]

  scope :ordered, -> { order(:created_at => :desc) }
  scope :actives, -> { where(:active => true) }

  def slug_candidates
    [ :title, [:title, :id]]
  end

end
