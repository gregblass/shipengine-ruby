# ShipEngineApi::ShipmentsApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**shipments_add_tag**](ShipmentsApi.md#shipments_add_tag) | **POST** /v1/shipments/{shipment_id}/tags/{tag} | 
[**shipments_cancel**](ShipmentsApi.md#shipments_cancel) | **PUT** /v1/shipments/{shipment_id}/cancel | 
[**shipments_create_shipments**](ShipmentsApi.md#shipments_create_shipments) | **POST** /v1/shipments | 
[**shipments_get**](ShipmentsApi.md#shipments_get) | **GET** /v1/shipments/{shipment_id} | 
[**shipments_get_by_external_id**](ShipmentsApi.md#shipments_get_by_external_id) | **GET** /v1/shipments/external_shipment_id/{external_shipment_id} | 
[**shipments_get_rates_for_shipment**](ShipmentsApi.md#shipments_get_rates_for_shipment) | **GET** /v1/shipments/{shipment_id}/rates | 
[**shipments_list**](ShipmentsApi.md#shipments_list) | **GET** /v1/shipments | 
[**shipments_list_errors**](ShipmentsApi.md#shipments_list_errors) | **GET** /v1/shipments/{shipment_id}/errors | 
[**shipments_remove_tag**](ShipmentsApi.md#shipments_remove_tag) | **DELETE** /v1/shipments/{shipment_id}/tags/{tag} | 
[**shipments_update_shipment**](ShipmentsApi.md#shipments_update_shipment) | **PUT** /v1/shipments/{shipment_id} | 


# **shipments_add_tag**
> ShipmentAddTagResponse shipments_add_tag(shipment_id, tag, api_key)



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

api_instance = ShipEngineApi::ShipmentsApi.new

shipment_id = "shipment_id_example" # String | 

tag = "tag_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.shipments_add_tag(shipment_id, tag, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling ShipmentsApi->shipments_add_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**|  | 
 **tag** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**ShipmentAddTagResponse**](ShipmentAddTagResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **shipments_cancel**
> shipments_cancel(shipment_id, api_key)



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

api_instance = ShipEngineApi::ShipmentsApi.new

shipment_id = "shipment_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.shipments_cancel(shipment_id, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling ShipmentsApi->shipments_cancel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **shipments_create_shipments**
> CreateShipmentsResponse shipments_create_shipments(shipments_request, api_key)



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

api_instance = ShipEngineApi::ShipmentsApi.new

shipments_request = ShipEngineApi::CreateShipmentsRequest.new # CreateShipmentsRequest | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.shipments_create_shipments(shipments_request, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling ShipmentsApi->shipments_create_shipments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipments_request** | [**CreateShipmentsRequest**](CreateShipmentsRequest.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**CreateShipmentsResponse**](CreateShipmentsResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **shipments_get**
> Shipment shipments_get(shipment_id, api_key)



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

api_instance = ShipEngineApi::ShipmentsApi.new

shipment_id = "shipment_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.shipments_get(shipment_id, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling ShipmentsApi->shipments_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**Shipment**](Shipment.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **shipments_get_by_external_id**
> Shipment shipments_get_by_external_id(external_shipment_id, api_key)



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

api_instance = ShipEngineApi::ShipmentsApi.new

external_shipment_id = "external_shipment_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.shipments_get_by_external_id(external_shipment_id, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling ShipmentsApi->shipments_get_by_external_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_shipment_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**Shipment**](Shipment.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **shipments_get_rates_for_shipment**
> RateResponse shipments_get_rates_for_shipment(shipment_id, api_key, opts)



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

api_instance = ShipEngineApi::ShipmentsApi.new

shipment_id = "shipment_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key

opts = { 
  created_at_start: DateTime.parse("2013-10-20T19:20:30+01:00") # DateTime | 
}

begin
  result = api_instance.shipments_get_rates_for_shipment(shipment_id, api_key, opts)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling ShipmentsApi->shipments_get_rates_for_shipment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]
 **created_at_start** | **DateTime**|  | [optional] 

### Return type

[**RateResponse**](RateResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **shipments_list**
> ListShipmentResponse shipments_list(api_key, opts)



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

api_instance = ShipEngineApi::ShipmentsApi.new

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key

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
  result = api_instance.shipments_list(api_key, opts)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling ShipmentsApi->shipments_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]
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



# **shipments_list_errors**
> ShipmentResponseErrors shipments_list_errors(shipment_id, api_key, opts)



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

api_instance = ShipEngineApi::ShipmentsApi.new

shipment_id = "shipment_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key

opts = { 
  page: 56, # Integer | 
  pagesize: 56 # Integer | 
}

begin
  result = api_instance.shipments_list_errors(shipment_id, api_key, opts)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling ShipmentsApi->shipments_list_errors: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]
 **page** | **Integer**|  | [optional] 
 **pagesize** | **Integer**|  | [optional] 

### Return type

[**ShipmentResponseErrors**](ShipmentResponseErrors.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **shipments_remove_tag**
> shipments_remove_tag(shipment_id, tag, api_key)



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

api_instance = ShipEngineApi::ShipmentsApi.new

shipment_id = "shipment_id_example" # String | 

tag = "tag_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.shipments_remove_tag(shipment_id, tag, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling ShipmentsApi->shipments_remove_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**|  | 
 **tag** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **shipments_update_shipment**
> CreateShipmentResponse shipments_update_shipment(shipment_id, shipment, api_key)



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

api_instance = ShipEngineApi::ShipmentsApi.new

shipment_id = "shipment_id_example" # String | 

shipment = ShipEngineApi::AddressValidatingShipment.new # AddressValidatingShipment | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.shipments_update_shipment(shipment_id, shipment, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling ShipmentsApi->shipments_update_shipment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**|  | 
 **shipment** | [**AddressValidatingShipment**](AddressValidatingShipment.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**CreateShipmentResponse**](CreateShipmentResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



