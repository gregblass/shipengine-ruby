require 'pp'
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

# get available carriers to use for rate request
carriers_api = ShipEngineApi::CarriersApi.new()
response = carriers_api.carriers_list(api_key)
first_carrier_id = response.carriers.first().carrier_id

ship_from = ShipEngineApi::AddressDTO.new(:name => 'ShipStation',
				:phone => "512-485-4282",
				:company_name => "ShipStation",
				:address_line1 => "3800 N. Lamar Blvd.",
				:address_line2 => "Suite 220",
				:city_locality => "Austin",
				:state_province => "TX",
				:postal_code => "78756",
				:country_code => "US",
				:address_residential_indicator => "no")
				
ship_to = ShipEngineApi::AddressDTO.new(:name => "Mickey and Minnie Mouse",
      :phone => "+1 (714) 781-4565",
      :company_name => "The Walt Disney Company",
      :address_line1 => "500 South Buena Vista Street",
      :city_locality => "Burbank",
      :state_province => "CA",
      :postal_code => "91521",
      :country_code => "US",
      :address_residential_indicator => "no")

packages = [ ShipEngineApi::ShipmentPackage.new(:weight => ShipEngineApi::Weight.new(:value => 1.0, :unit => "ounce")) ]
shipment = ShipEngineApi::AddressValidatingShipment.new(:ship_from => ship_from, :ship_to => ship_to, :packages => packages)

rate_options = ShipEngineApi::RateRequest.new(:carrier_ids => [first_carrier_id])

rate_request = ShipEngineApi::RateShipmentRequest.new(:shipment => shipment,:rate_options => rate_options)
	  
begin
	rates_api = ShipEngineApi::RatesApi.new
	response = rates_api.rates_rate_shipment(rate_request, api_key)	
	rates = response.rate_response.rates	
	puts  '--- Success ---'	
	rates.each{ |rate| 
		puts "Rate Id: #{rate.rate_id}"
		puts "\t Service: #{rate.service_type}"
		puts "\t Package Type: #{rate.package_type}"
		puts "\t Cost: $#{rate.shipping_amount.amount}"
	}
	puts  '---'
rescue ShipEngineApi::ApiError => e
  puts '*** Failure ***'
  puts "Exception when calling RatesApi->rates_rate_shipment: #{e}"  
  puts "Response Body: #{e.response_body}"  
  puts '***'  
end

puts