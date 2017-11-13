class GoogleMapsApi

  GOOGLEMAPS = GoogleMapsService::Client.new(
    key: ENV['GOOGLE_MAPS_API_KEY'],
    retry_timeout: 20,      # Timeout for retrying failed request
    queries_per_second: 10  # Limit total request per second
  )

  GOOGLEPLACES = GooglePlaces::Client.new(ENV['GOOGLE_MAPS_API_KEY'])

end

# gmaps = GoogleMapsApi::GOOGLEMAPS
# address = '1600 Amphitheatre Parkway, Mountain View, CA'
# results = gmaps.geocode(address)


# GoogleMapsApi::GOOGLEPLACES.spots_by_query('query string')