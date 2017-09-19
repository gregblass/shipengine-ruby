# ShipEngine::CarriersApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](CarriersApi.md#get) | **GET** /v1/carriers/{carrier_id} | 
[**get_options**](CarriersApi.md#get_options) | **GET** /v1/carriers/{carrier_id}/options | 
[**list**](CarriersApi.md#list) | **GET** /v1/carriers | 
[**list_packages**](CarriersApi.md#list_packages) | **GET** /v1/carriers/{carrier_id}/packages | 
[**list_services**](CarriersApi.md#list_services) | **GET** /v1/carriers/{carrier_id}/services | 


# **get**
> Carrier get(carrier_id)



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

api_instance = ShipEngine::CarriersApi.new

carrier_id = "carrier_id_example" # String | 


begin
  result = api_instance.get(carrier_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarriersApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 

### Return type

[**Carrier**](Carrier.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **get_options**
> CarrierListOptionsResponse get_options(carrier_id)



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

api_instance = ShipEngine::CarriersApi.new

carrier_id = "carrier_id_example" # String | 


begin
  result = api_instance.get_options(carrier_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarriersApi->get_options: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 

### Return type

[**CarrierListOptionsResponse**](CarrierListOptionsResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **list**
> CarrierListResponse list



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

api_instance = ShipEngine::CarriersApi.new

begin
  result = api_instance.list
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarriersApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CarrierListResponse**](CarrierListResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **list_packages**
> CarrierListPackagesResponse list_packages(carrier_id)



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

api_instance = ShipEngine::CarriersApi.new

carrier_id = "carrier_id_example" # String | 


begin
  result = api_instance.list_packages(carrier_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarriersApi->list_packages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 

### Return type

[**CarrierListPackagesResponse**](CarrierListPackagesResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **list_services**
> CarrierListServicesResponse list_services(carrier_id)



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

api_instance = ShipEngine::CarriersApi.new

carrier_id = "carrier_id_example" # String | 


begin
  result = api_instance.list_services(carrier_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarriersApi->list_services: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 

### Return type

[**CarrierListServicesResponse**](CarrierListServicesResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



