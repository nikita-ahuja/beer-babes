class BreweryApi
	CLIENT =  BreweryDB::Client.new do |config|
		config.api_key = ENV['BEERDB_API_KEY']
	end
end