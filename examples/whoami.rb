require 'shipengine_api'
puts 
api_key = ARGV[0]
if api_key.nil?
  p 'provide api key as first argument'
  exit
end

puts  "Using api-key: #{api_key}"

ShipEngineApi.configure do |config|
  # not needed
  # config.api_key['api-key'] = api_key 
  config.debugging = false
end

begin
	environment_api = ShipEngineApi::EnvironmentApi.new
	response = environment_api.environment_whoami(api_key)
	response_data = response[:data]
	puts  '--- Success ---'
	puts  "Request-Id: #{response[:request_id]}"
	puts  "Username: #{response_data[:username]}"
	puts  '---'
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling EnvironmentApi->environment_whoami: #{e}"
end