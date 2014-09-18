json.array!(@countries) do |country|
  json.extract! country, :id, :name, :code, :facebook, :email, :telefono
  json.url country_url(country, format: :json)
end
