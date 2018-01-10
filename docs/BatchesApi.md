# ShipEngineApi::BatchesApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batches_add_to_batch**](BatchesApi.md#batches_add_to_batch) | **POST** /v1/batches/{batch_id}/add | 
[**batches_create**](BatchesApi.md#batches_create) | **POST** /v1/batches | 
[**batches_get**](BatchesApi.md#batches_get) | **GET** /v1/batches/{batch_id} | 
[**batches_get_by_external_id**](BatchesApi.md#batches_get_by_external_id) | **GET** /v1/batches/external_batch_id/{external_batch_id} | 
[**batches_list**](BatchesApi.md#batches_list) | **GET** /v1/batches | 
[**batches_list_errors**](BatchesApi.md#batches_list_errors) | **GET** /v1/batches/{batch_id}/errors | 
[**batches_process**](BatchesApi.md#batches_process) | **POST** /v1/batches/{batch_id}/process/labels | 
[**batches_remove_from_batch**](BatchesApi.md#batches_remove_from_batch) | **POST** /v1/batches/{batch_id}/remove | 


# **batches_add_to_batch**
> batches_add_to_batch(batch_id, request, api_key)



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

api_instance = ShipEngineApi::BatchesApi.new

batch_id = "batch_id_example" # String | 

request = ShipEngineApi::ModifyBatchRequest.new # ModifyBatchRequest | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.batches_add_to_batch(batch_id, request, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling BatchesApi->batches_add_to_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**|  | 
 **request** | [**ModifyBatchRequest**](ModifyBatchRequest.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **batches_create**
> Batch batches_create(request, api_key)



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

api_instance = ShipEngineApi::BatchesApi.new

request = ShipEngineApi::CreateBatchRequest.new # CreateBatchRequest | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.batches_create(request, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling BatchesApi->batches_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CreateBatchRequest**](CreateBatchRequest.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**Batch**](Batch.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **batches_get**
> Batch batches_get(batch_id, api_key)



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

api_instance = ShipEngineApi::BatchesApi.new

batch_id = "batch_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.batches_get(batch_id, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling BatchesApi->batches_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**Batch**](Batch.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **batches_get_by_external_id**
> batches_get_by_external_id(external_batch_id, api_key)



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

api_instance = ShipEngineApi::BatchesApi.new

external_batch_id = "external_batch_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.batches_get_by_external_id(external_batch_id, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling BatchesApi->batches_get_by_external_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_batch_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **batches_list**
> ListBatchResponse batches_list(api_key, opts)



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

api_instance = ShipEngineApi::BatchesApi.new

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key

opts = { 
  status: "status_example", # String | 
  page: 56, # Integer | 
  page_size: 56, # Integer | 
  sort_dir: "sort_dir_example", # String | 
  sort_by: "sort_by_example" # String | 
}

begin
  result = api_instance.batches_list(api_key, opts)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling BatchesApi->batches_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]
 **status** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 
 **sort_dir** | **String**|  | [optional] 
 **sort_by** | **String**|  | [optional] 

### Return type

[**ListBatchResponse**](ListBatchResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **batches_list_errors**
> BatchResponseErrors batches_list_errors(batch_id, api_key, opts)



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

api_instance = ShipEngineApi::BatchesApi.new

batch_id = "batch_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key

opts = { 
  page: 56, # Integer | 
  pagesize: 56 # Integer | 
}

begin
  result = api_instance.batches_list_errors(batch_id, api_key, opts)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling BatchesApi->batches_list_errors: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]
 **page** | **Integer**|  | [optional] 
 **pagesize** | **Integer**|  | [optional] 

### Return type

[**BatchResponseErrors**](BatchResponseErrors.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **batches_process**
> batches_process(batch_id, process_batch_request, api_key)



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

api_instance = ShipEngineApi::BatchesApi.new

batch_id = "batch_id_example" # String | 

process_batch_request = ShipEngineApi::ProcessBatchRequest.new # ProcessBatchRequest | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.batches_process(batch_id, process_batch_request, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling BatchesApi->batches_process: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**|  | 
 **process_batch_request** | [**ProcessBatchRequest**](ProcessBatchRequest.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **batches_remove_from_batch**
> batches_remove_from_batch(batch_id, request, api_key)



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

api_instance = ShipEngineApi::BatchesApi.new

batch_id = "batch_id_example" # String | 

request = ShipEngineApi::ModifyBatchRequest.new # ModifyBatchRequest | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.batches_remove_from_batch(batch_id, request, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling BatchesApi->batches_remove_from_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**|  | 
 **request** | [**ModifyBatchRequest**](ModifyBatchRequest.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



