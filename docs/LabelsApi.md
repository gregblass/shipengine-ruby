# ShipEngine::LabelsApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](LabelsApi.md#get) | **GET** /v1/labels/{label_id} | 
[**list**](LabelsApi.md#list) | **GET** /v1/labels | 
[**purchase_label**](LabelsApi.md#purchase_label) | **POST** /v1/labels | 
[**purchase_label_with_rate**](LabelsApi.md#purchase_label_with_rate) | **POST** /v1/labels/rates/{rate_id} | 
[**purchase_label_with_shipment**](LabelsApi.md#purchase_label_with_shipment) | **POST** /v1/labels/shipment/{shipment_id} | 
[**track**](LabelsApi.md#track) | **GET** /v1/labels/{label_id}/track | 
[**void_label**](LabelsApi.md#void_label) | **PUT** /v1/labels/{label_id}/void | 


# **get**
> Label get(label_id)



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

api_instance = ShipEngine::LabelsApi.new

label_id = "label_id_example" # String | 


begin
  result = api_instance.get(label_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling LabelsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **label_id** | **String**|  | 

### Return type

[**Label**](Label.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **list**
> ListLabelResponse list(opts)



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

api_instance = ShipEngine::LabelsApi.new

opts = { 
  batch_id: "batch_id_example", # String | 
  label_status: "label_status_example", # String | 
  carrier_id: "carrier_id_example", # String | 
  service_code: "service_code_example", # String | 
  tracking_number: "tracking_number_example", # String | 
  warehouse_id: "warehouse_id_example", # String | 
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
  puts "Exception when calling LabelsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**|  | [optional] 
 **label_status** | **String**|  | [optional] 
 **carrier_id** | **String**|  | [optional] 
 **service_code** | **String**|  | [optional] 
 **tracking_number** | **String**|  | [optional] 
 **warehouse_id** | **String**|  | [optional] 
 **created_at_start** | **DateTime**|  | [optional] 
 **created_at_end** | **DateTime**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 
 **sort_dir** | **String**|  | [optional] 
 **sort_by** | **String**|  | [optional] 

### Return type

[**ListLabelResponse**](ListLabelResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **purchase_label**
> Label purchase_label(request)



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

api_instance = ShipEngine::LabelsApi.new

request = ShipEngine::PurchaseLabelRequest.new # PurchaseLabelRequest | 


begin
  result = api_instance.purchase_label(request)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling LabelsApi->purchase_label: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**PurchaseLabelRequest**](PurchaseLabelRequest.md)|  | 

### Return type

[**Label**](Label.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **purchase_label_with_rate**
> Label purchase_label_with_rate(rate_id, request)



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

api_instance = ShipEngine::LabelsApi.new

rate_id = "rate_id_example" # String | 

request = ShipEngine::PurchaseLabelWithoutShipmentRequest.new # PurchaseLabelWithoutShipmentRequest | 


begin
  result = api_instance.purchase_label_with_rate(rate_id, request)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling LabelsApi->purchase_label_with_rate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rate_id** | **String**|  | 
 **request** | [**PurchaseLabelWithoutShipmentRequest**](PurchaseLabelWithoutShipmentRequest.md)|  | 

### Return type

[**Label**](Label.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **purchase_label_with_shipment**
> Label purchase_label_with_shipment(shipment_id, request)



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

api_instance = ShipEngine::LabelsApi.new

shipment_id = "shipment_id_example" # String | 

request = ShipEngine::PurchaseLabelWithoutShipmentRequest.new # PurchaseLabelWithoutShipmentRequest | 


begin
  result = api_instance.purchase_label_with_shipment(shipment_id, request)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling LabelsApi->purchase_label_with_shipment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**|  | 
 **request** | [**PurchaseLabelWithoutShipmentRequest**](PurchaseLabelWithoutShipmentRequest.md)|  | 

### Return type

[**Label**](Label.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **track**
> TrackingInformation track(label_id)



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

api_instance = ShipEngine::LabelsApi.new

label_id = "label_id_example" # String | 


begin
  result = api_instance.track(label_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling LabelsApi->track: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **label_id** | **String**|  | 

### Return type

[**TrackingInformation**](TrackingInformation.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **void_label**
> VoidLabelResponse void_label(label_id)



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

api_instance = ShipEngine::LabelsApi.new

label_id = "label_id_example" # String | 


begin
  result = api_instance.void_label(label_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling LabelsApi->void_label: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **label_id** | **String**|  | 

### Return type

[**VoidLabelResponse**](VoidLabelResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



