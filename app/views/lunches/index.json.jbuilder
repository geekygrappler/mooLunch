json.array!(@lunches) do |lunch|
  json.extract! lunch, :id, :restaurant, :date
  json.url lunch_url(lunch, format: :json)
end
