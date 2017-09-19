# ShipEngine::ShipmentsApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_tag**](ShipmentsApi.md#add_tag) | **POST** /v1/shipments/{shipment_id}/tags/{tag} | 
[**cancel**](ShipmentsApi.md#cancel) | **PUT** /v1/shipments/{shipment_id}/cancel | 
[**create**](ShipmentsApi.md#create) | **POST** /v1/shipments | 
[**get**](ShipmentsApi.md#get) | **GET** /v1/shipments/{shipment_id} | 
[**get_by_external_id**](ShipmentsApi.md#get_by_external_id) | **GET** /v1/shipments/external_shipment_id/{external_shipment_id} | 
[**get_rates_for_shipment**](ShipmentsApi.md#get_rates_for_shipment) | **GET** /v1/shipments/{shipment_id}/rates | 
[**list**](ShipmentsApi.md#list) | **GET** /v1/shipments | 
[**list_errors**](ShipmentsApi.md#list_errors) | **GET** /v1/shipments/{shipment_id}/errors | 
[**remove_tag**](ShipmentsApi.md#remove_tag) | **DELETE** /v1/shipments/{shipment_id}/tags/{tag} | 
[**update**](ShipmentsApi.md#update) | **PUT** /v1/shipments/{shipment_id} | 


# **add_tag**
> ShipmentAddTagResponse add_tag(shipment_id, tag)



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

api_instance = ShipEngine::ShipmentsApi.new

shipment_id = "shipment_id_example" # String | 

tag = "tag_example" # String | 


begin
  result = api_instance.add_tag(shipment_id, tag)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling ShipmentsApi->add_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**|  | 
 **tag** | **String**|  | 

### Return type

[**ShipmentAddTagResponse**](ShipmentAddTagResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **cancel**
> cancel(shipment_id)



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

api_instance = ShipEngine::ShipmentsApi.new

shipment_id = "shipment_id_example" # String | 


begin
  api_instance.cancel(shipment_id)
rescue ShipEngine::ApiError => e
  puts "Exception when calling ShipmentsApi->cancel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **create**
> CreateShipmentsResponse create(shipments_request)



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

api_instance = ShipEngine::ShipmentsApi.new

shipments_request = ShipEngine::CreateShipmentsRequest.new # CreateShipmentsRequest | 


begin
  result = api_instance.create(shipments_request)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling ShipmentsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipments_request** | [**CreateShipmentsRequest**](CreateShipmentsRequest.md)|  | 

### Return type

[**CreateShipmentsResponse**](CreateShipmentsResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **get**
> Shipment get(shipment_id)



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

api_instance = ShipEngine::ShipmentsApi.new

shipment_id = "shipment_id_example" # String | 


begin
  result = api_instance.get(shipment_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling ShipmentsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**|  | 

### Return type

[**Shipment**](Shipment.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **get_by_external_id**
> Shipment get_by_external_id(external_shipment_id)



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

api_instance = ShipEngine::ShipmentsApi.new

external_shipment_id = "external_shipment_id_example" # String | 


begin
  result = api_instance.get_by_external_id(external_shipment_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling ShipmentsApi->get_by_external_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_shipment_id** | **String**|  | 

### Return type

[**Shipment**](Shipment.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **get_rates_for_shipment**
> RateResponse get_rates_for_shipment(shipment_id, opts)



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

api_instance = ShipEngine::ShipmentsApi.new

shipment_id = "shipment_id_example" # String | 

opts = { 
  created_at_start: DateTime.parse("2013-10-20T19:20:30+01:00") # DateTime | 
}

begin
  result = api_instance.get_rates_for_shipment(shipment_id, opts)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling ShipmentsApi->get_rates_for_shipment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**|  | 
 **created_at_start** | **DateTime**|  | [optional] 

### Return type

[**RateResponse**](RateResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **list**
> ListShipmentResponse list(opts)



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

api_instance = ShipEngine::ShipmentsApi.new

opts = { 
  batch_id: "batch_id_example", # String | 
  tag: "tag_example", # String | 
  shipment_status: "shipment_status_example", # String | 
  modified_at_start: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | 
  modified_at_end: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | 
  created_at_start: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | 
  created_at_end: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | 
  page: 56, # Integer | 
  page_size: 56, # Integer | 
  sort_dir: "sort_dir_example", # String | 
  sort_by: "sort_by_example" # String | 
}

begin
  result = api_instance.list(opts)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling ShipmentsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**|  | [optional] 
 **tag** | **String**|  | [optional] 
 **shipment_status** | **String**|  | [optional] 
 **modified_at_start** | **DateTime**|  | [optional] 
 **modified_at_end** | **DateTime**|  | [optional] 
 **created_at_start** | **DateTime**|  | [optional] 
 **created_at_end** | **DateTime**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 
 **sort_dir** | **String**|  | [optional] 
 **sort_by** | **String**|  | [optional] 

### Return type

[**ListShipmentResponse**](ListShipmentResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **list_errors**
> ShipmentResponseErrors list_errors(shipment_id, opts)



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

api_instance = ShipEngine::ShipmentsApi.new

shipment_id = "shipment_id_example" # String | 

opts = { 
  page: 56, # Integer | 
  pagesize: 56 # Integer | 
}

begin
  result = api_instance.list_errors(shipment_id, opts)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling ShipmentsApi->list_errors: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**|  | 
 **page** | **Integer**|  | [optional] 
 **pagesize** | **Integer**|  | [optional] 

### Return type

[**ShipmentResponseErrors**](ShipmentResponseErrors.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **remove_tag**
> remove_tag(shipment_id, tag)



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

api_instance = ShipEngine::ShipmentsApi.new

shipment_id = "shipment_id_example" # String | 

tag = "tag_example" # String | 


begin
  api_instance.remove_tag(shipment_id, tag)
rescue ShipEngine::ApiError => e
  puts "Exception when calling ShipmentsApi->remove_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**|  | 
 **tag** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **update**
> update(shipment_id, shipment)



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

api_instance = ShipEngine::ShipmentsApi.new

shipment_id = "shipment_id_example" # String | 

shipment = ShipEngine::AddressValidatingShipment.new # AddressValidatingShipment | 


begin
  api_instance.update(shipment_id, shipment)
rescue ShipEngine::ApiError => e
  puts "Exception when calling ShipmentsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**|  | 
 **shipment** | [**AddressValidatingShipment**](AddressValidatingShipment.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



