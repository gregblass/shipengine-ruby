# ShipEngineApi::LabelsApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**labels_get**](LabelsApi.md#labels_get) | **GET** /v1/labels/{label_id} | 
[**labels_list**](LabelsApi.md#labels_list) | **GET** /v1/labels | 
[**labels_purchase_label**](LabelsApi.md#labels_purchase_label) | **POST** /v1/labels | 
[**labels_purchase_label_with_rate**](LabelsApi.md#labels_purchase_label_with_rate) | **POST** /v1/labels/rates/{rate_id} | 
[**labels_purchase_label_with_shipment**](LabelsApi.md#labels_purchase_label_with_shipment) | **POST** /v1/labels/shipment/{shipment_id} | 
[**labels_track**](LabelsApi.md#labels_track) | **GET** /v1/labels/{label_id}/track | 
[**labels_void_label**](LabelsApi.md#labels_void_label) | **PUT** /v1/labels/{label_id}/void | 


# **labels_get**
> Label labels_get(label_id, api_key)



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

api_instance = ShipEngineApi::LabelsApi.new

label_id = "label_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.labels_get(label_id, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling LabelsApi->labels_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **label_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**Label**](Label.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **labels_list**
> ListLabelResponse labels_list(api_key, opts)



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

api_instance = ShipEngineApi::LabelsApi.new

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key

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
  result = api_instance.labels_list(api_key, opts)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling LabelsApi->labels_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]
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



# **labels_purchase_label**
> Label labels_purchase_label(request, api_key)



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

api_instance = ShipEngineApi::LabelsApi.new

request = ShipEngineApi::PurchaseLabelRequest.new # PurchaseLabelRequest | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.labels_purchase_label(request, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling LabelsApi->labels_purchase_label: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**PurchaseLabelRequest**](PurchaseLabelRequest.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**Label**](Label.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **labels_purchase_label_with_rate**
> Label labels_purchase_label_with_rate(rate_id, request, api_key)



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

api_instance = ShipEngineApi::LabelsApi.new

rate_id = "rate_id_example" # String | 

request = ShipEngineApi::PurchaseLabelWithoutShipmentRequest.new # PurchaseLabelWithoutShipmentRequest | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.labels_purchase_label_with_rate(rate_id, request, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling LabelsApi->labels_purchase_label_with_rate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rate_id** | **String**|  | 
 **request** | [**PurchaseLabelWithoutShipmentRequest**](PurchaseLabelWithoutShipmentRequest.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**Label**](Label.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **labels_purchase_label_with_shipment**
> Label labels_purchase_label_with_shipment(shipment_id, request, api_key)



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

api_instance = ShipEngineApi::LabelsApi.new

shipment_id = "shipment_id_example" # String | 

request = ShipEngineApi::PurchaseLabelWithoutShipmentRequest.new # PurchaseLabelWithoutShipmentRequest | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.labels_purchase_label_with_shipment(shipment_id, request, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling LabelsApi->labels_purchase_label_with_shipment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**|  | 
 **request** | [**PurchaseLabelWithoutShipmentRequest**](PurchaseLabelWithoutShipmentRequest.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**Label**](Label.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **labels_track**
> TrackingInformation labels_track(label_id, api_key)



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

api_instance = ShipEngineApi::LabelsApi.new

label_id = "label_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.labels_track(label_id, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling LabelsApi->labels_track: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **label_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**TrackingInformation**](TrackingInformation.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **labels_void_label**
> VoidLabelResponse labels_void_label(label_id, api_key)



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

api_instance = ShipEngineApi::LabelsApi.new

label_id = "label_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.labels_void_label(label_id, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling LabelsApi->labels_void_label: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **label_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**VoidLabelResponse**](VoidLabelResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



