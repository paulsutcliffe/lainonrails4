json.array!(@testimonies) do |testimony|
  json.extract! testimony, :id, :name, :content, :testimony_type, :image, :video_link, :slug
  json.url testimony_url(testimony, format: :json)
end
