json.array!(@subscribers) do |subscriber|
  json.extract! subscriber, :id, :first_name, :last_name, :email, :phone, :country_id
  json.url subscriber_url(subscriber, format: :json)
end
