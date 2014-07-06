json.array!(@banners) do |banner|
  json.extract! banner, :id, :name, :location, :image, :link, :country_id
  json.url banner_url(banner, format: :json)
end
