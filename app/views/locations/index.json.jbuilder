json.array!(@locations) do |location|
  json.extract! location, :id, :name, :latitude, :longitude, :address
  json.url location_url(location, format: :json)
end
