json.array!(@opportunities) do |opportunity|
  json.extract! opportunity, :id, :title, :description, :image, :active, :country_id
  json.url opportunity_url(opportunity, format: :json)
end
