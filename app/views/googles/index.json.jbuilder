json.array!(@googles) do |google|
  json.extract! google, :id, :latlng, :content
  json.url google_url(google, format: :json)
end
