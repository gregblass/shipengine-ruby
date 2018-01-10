# ShipEngineApi::TrackingApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tracking_start_tracking**](TrackingApi.md#tracking_start_tracking) | **POST** /v1/tracking/start | 
[**tracking_stop_tracking**](TrackingApi.md#tracking_stop_tracking) | **POST** /v1/tracking/stop | 
[**tracking_track**](TrackingApi.md#tracking_track) | **GET** /v1/tracking | 


# **tracking_start_tracking**
> tracking_start_tracking(api_key, opts)



### Example
```ruby
# load the gem
require 'shipengine_api'
# setup authorization
ShipEngineApi.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = ShipEngineApi::TrackingApi.new

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key

opts = { 
  carrier_code: "carrier_code_example", # String | 
  tracking_number: "tracking_number_example" # String | 
}

begin
  api_instance.tracking_start_tracking(api_key, opts)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling TrackingApi->tracking_start_tracking: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]
 **carrier_code** | **String**|  | [optional] 
 **tracking_number** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **tracking_stop_tracking**
> tracking_stop_tracking(api_key, opts)



### Example
```ruby
# load the gem
require 'shipengine_api'
# setup authorization
ShipEngineApi.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = ShipEngineApi::TrackingApi.new

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key

opts = { 
  carrier_code: "carrier_code_example", # String | 
  tracking_number: "tracking_number_example" # String | 
}

begin
  api_instance.tracking_stop_tracking(api_key, opts)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling TrackingApi->tracking_stop_tracking: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]
 **carrier_code** | **String**|  | [optional] 
 **tracking_number** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **tracking_track**
> TrackingInformation tracking_track(api_key, opts)



### Example
```ruby
# load the gem
require 'shipengine_api'
# setup authorization
ShipEngineApi.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = ShipEngineApi::TrackingApi.new

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key

opts = { 
  carrier_code: "carrier_code_example", # String | 
  tracking_number: "tracking_number_example" # String | 
}

begin
  result = api_instance.tracking_track(api_key, opts)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling TrackingApi->tracking_track: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]
 **carrier_code** | **String**|  | [optional] 
 **tracking_number** | **String**|  | [optional] 

### Return type

[**TrackingInformation**](TrackingInformation.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



