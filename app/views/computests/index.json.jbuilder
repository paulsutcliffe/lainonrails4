json.array!(@computests) do |computest|
  json.extract! computest, :id, :first_name, :last_name, :email, :phone, :gender, :height, :weight, :bmi, :state, :ideal_weight, :country_id
  json.url computest_url(computest, format: :json)
end
