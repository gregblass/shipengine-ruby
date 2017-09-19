# ShipEngine::TrackingApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**start_tracking**](TrackingApi.md#start_tracking) | **POST** /v1/tracking/start | 
[**stop_tracking**](TrackingApi.md#stop_tracking) | **POST** /v1/tracking/stop | 
[**track**](TrackingApi.md#track) | **GET** /v1/tracking | 


# **start_tracking**
> start_tracking(opts)



### Example
```ruby
# load the gem
require 'ship_engine'
# setup authorization
ShipEngine.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = ShipEngine::TrackingApi.new

opts = { 
  carrier_code: "carrier_code_example", # String | 
  tracking_number: "tracking_number_example" # String | 
}

begin
  api_instance.start_tracking(opts)
rescue ShipEngine::ApiError => e
  puts "Exception when calling TrackingApi->start_tracking: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_code** | **String**|  | [optional] 
 **tracking_number** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **stop_tracking**
> stop_tracking(opts)



### Example
```ruby
# load the gem
require 'ship_engine'
# setup authorization
ShipEngine.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = ShipEngine::TrackingApi.new

opts = { 
  carrier_code: "carrier_code_example", # String | 
  tracking_number: "tracking_number_example" # String | 
}

begin
  api_instance.stop_tracking(opts)
rescue ShipEngine::ApiError => e
  puts "Exception when calling TrackingApi->stop_tracking: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_code** | **String**|  | [optional] 
 **tracking_number** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **track**
> TrackingInformation track(opts)



### Example
```ruby
# load the gem
require 'ship_engine'
# setup authorization
ShipEngine.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = ShipEngine::TrackingApi.new

opts = { 
  carrier_code: "carrier_code_example", # String | 
  tracking_number: "tracking_number_example" # String | 
}

begin
  result = api_instance.track(opts)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling TrackingApi->track: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_code** | **String**|  | [optional] 
 **tracking_number** | **String**|  | [optional] 

### Return type

[**TrackingInformation**](TrackingInformation.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



