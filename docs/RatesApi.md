# ShipEngine::RatesApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**estimate**](RatesApi.md#estimate) | **POST** /v1/rates/estimate | 
[**get**](RatesApi.md#get) | **GET** /v1/rates/{rate_id} | 
[**rate_shipment**](RatesApi.md#rate_shipment) | **POST** /v1/rates | 
[**rate_shipments_async**](RatesApi.md#rate_shipments_async) | **POST** /v1/rates/bulk | 


# **estimate**
> Array&lt;Rate&gt; estimate(estimate_request)



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

api_instance = ShipEngine::RatesApi.new

estimate_request = ShipEngine::RateEstimateRequest.new # RateEstimateRequest | 


begin
  result = api_instance.estimate(estimate_request)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling RatesApi->estimate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **estimate_request** | [**RateEstimateRequest**](RateEstimateRequest.md)|  | 

### Return type

[**Array&lt;Rate&gt;**](Rate.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **get**
> Rate get(rate_id)



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

api_instance = ShipEngine::RatesApi.new

rate_id = "rate_id_example" # String | 


begin
  result = api_instance.get(rate_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling RatesApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rate_id** | **String**|  | 

### Return type

[**Rate**](Rate.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **rate_shipment**
> rate_shipment(request)



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

api_instance = ShipEngine::RatesApi.new

request = ShipEngine::RateShipmentRequest.new # RateShipmentRequest | 


begin
  api_instance.rate_shipment(request)
rescue ShipEngine::ApiError => e
  puts "Exception when calling RatesApi->rate_shipment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**RateShipmentRequest**](RateShipmentRequest.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **rate_shipments_async**
> rate_shipments_async(request)



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

api_instance = ShipEngine::RatesApi.new

request = ShipEngine::RateShipmentsRequest.new # RateShipmentsRequest | 


begin
  api_instance.rate_shipments_async(request)
rescue ShipEngine::ApiError => e
  puts "Exception when calling RatesApi->rate_shipments_async: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**RateShipmentsRequest**](RateShipmentsRequest.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



