json.array!(@checkins) do |checkin|
  json.extract! checkin, :id, :location_id, :feel_id
  json.url checkin_url(checkin, format: :json)
end
