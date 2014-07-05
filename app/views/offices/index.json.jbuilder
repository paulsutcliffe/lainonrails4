json.array!(@offices) do |office|
  json.extract! office, :id, :name, :address, :phone, :image, :country_id, :slug
  json.url office_url(office, format: :json)
end
