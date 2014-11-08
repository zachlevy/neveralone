json.array!(@feels) do |feel|
  json.extract! feel, :id, :name
  json.url feel_url(feel, format: :json)
end
