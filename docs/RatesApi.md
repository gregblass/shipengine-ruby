# ShipEngineApi::RatesApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**rates_estimate**](RatesApi.md#rates_estimate) | **POST** /v1/rates/estimate | 
[**rates_get**](RatesApi.md#rates_get) | **GET** /v1/rates/{rate_id} | 
[**rates_rate_shipment**](RatesApi.md#rates_rate_shipment) | **POST** /v1/rates | 
[**rates_rate_shipments_async**](RatesApi.md#rates_rate_shipments_async) | **POST** /v1/rates/bulk | 


# **rates_estimate**
> Array&lt;Rate&gt; rates_estimate(estimate_request, api_key)



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

api_instance = ShipEngineApi::RatesApi.new

estimate_request = ShipEngineApi::RateEstimateRequest.new # RateEstimateRequest | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.rates_estimate(estimate_request, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling RatesApi->rates_estimate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **estimate_request** | [**RateEstimateRequest**](RateEstimateRequest.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**Array&lt;Rate&gt;**](Rate.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **rates_get**
> Rate rates_get(rate_id, api_key)



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

api_instance = ShipEngineApi::RatesApi.new

rate_id = "rate_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.rates_get(rate_id, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling RatesApi->rates_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rate_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**Rate**](Rate.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **rates_rate_shipment**
> RateShipmentResponse rates_rate_shipment(request, api_key)



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

api_instance = ShipEngineApi::RatesApi.new

request = ShipEngineApi::RateShipmentRequest.new # RateShipmentRequest | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.rates_rate_shipment(request, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling RatesApi->rates_rate_shipment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**RateShipmentRequest**](RateShipmentRequest.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**RateShipmentResponse**](RateShipmentResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **rates_rate_shipments_async**
> Array&lt;RateResponseAsync&gt; rates_rate_shipments_async(request, api_key)



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

api_instance = ShipEngineApi::RatesApi.new

request = ShipEngineApi::RateShipmentsRequest.new # RateShipmentsRequest | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.rates_rate_shipments_async(request, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling RatesApi->rates_rate_shipments_async: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**RateShipmentsRequest**](RateShipmentsRequest.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**Array&lt;RateResponseAsync&gt;**](RateResponseAsync.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



