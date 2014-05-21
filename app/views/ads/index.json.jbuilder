json.array!(@ads) do |ad|
  json.extract! ad, :id, :ad
  json.url ad_url(ad, format: :json)
end
