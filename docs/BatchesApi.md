# ShipEngine::BatchesApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_to_batch**](BatchesApi.md#add_to_batch) | **POST** /v1/batches/{batch_id}/add | 
[**create**](BatchesApi.md#create) | **POST** /v1/batches | 
[**get**](BatchesApi.md#get) | **GET** /v1/batches/{batch_id} | 
[**get_by_external_id**](BatchesApi.md#get_by_external_id) | **GET** /v1/batches/external_batch_id/{external_batch_id} | 
[**list**](BatchesApi.md#list) | **GET** /v1/batches | 
[**list_errors**](BatchesApi.md#list_errors) | **GET** /v1/batches/{batch_id}/errors | 
[**process**](BatchesApi.md#process) | **POST** /v1/batches/{batch_id}/process/labels | 
[**remove_from_batch**](BatchesApi.md#remove_from_batch) | **POST** /v1/batches/{batch_id}/remove | 


# **add_to_batch**
> add_to_batch(batch_id, request)



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

api_instance = ShipEngine::BatchesApi.new

batch_id = "batch_id_example" # String | 

request = ShipEngine::ModifyBatchRequest.new # ModifyBatchRequest | 


begin
  api_instance.add_to_batch(batch_id, request)
rescue ShipEngine::ApiError => e
  puts "Exception when calling BatchesApi->add_to_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**|  | 
 **request** | [**ModifyBatchRequest**](ModifyBatchRequest.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **create**
> Batch create(request)



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

api_instance = ShipEngine::BatchesApi.new

request = ShipEngine::CreateBatchRequest.new # CreateBatchRequest | 


begin
  result = api_instance.create(request)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling BatchesApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CreateBatchRequest**](CreateBatchRequest.md)|  | 

### Return type

[**Batch**](Batch.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **get**
> Batch get(batch_id)



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

api_instance = ShipEngine::BatchesApi.new

batch_id = "batch_id_example" # String | 


begin
  result = api_instance.get(batch_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling BatchesApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**|  | 

### Return type

[**Batch**](Batch.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **get_by_external_id**
> get_by_external_id(external_batch_id)



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

api_instance = ShipEngine::BatchesApi.new

external_batch_id = "external_batch_id_example" # String | 


begin
  api_instance.get_by_external_id(external_batch_id)
rescue ShipEngine::ApiError => e
  puts "Exception when calling BatchesApi->get_by_external_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_batch_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **list**
> ListBatchResponse list(opts)



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

api_instance = ShipEngine::BatchesApi.new

opts = { 
  status: "status_example", # String | 
  page: 56, # Integer | 
  page_size: 56, # Integer | 
  sort_dir: "sort_dir_example", # String | 
  sort_by: "sort_by_example" # String | 
}

begin
  result = api_instance.list(opts)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling BatchesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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



# **list_errors**
> BatchResponseErrors list_errors(batch_id, opts)



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

api_instance = ShipEngine::BatchesApi.new

batch_id = "batch_id_example" # String | 

opts = { 
  page: 56, # Integer | 
  pagesize: 56 # Integer | 
}

begin
  result = api_instance.list_errors(batch_id, opts)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling BatchesApi->list_errors: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**|  | 
 **page** | **Integer**|  | [optional] 
 **pagesize** | **Integer**|  | [optional] 

### Return type

[**BatchResponseErrors**](BatchResponseErrors.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **process**
> process(batch_id, process_batch_request)



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

api_instance = ShipEngine::BatchesApi.new

batch_id = "batch_id_example" # String | 

process_batch_request = ShipEngine::ProcessBatchRequest.new # ProcessBatchRequest | 


begin
  api_instance.process(batch_id, process_batch_request)
rescue ShipEngine::ApiError => e
  puts "Exception when calling BatchesApi->process: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**|  | 
 **process_batch_request** | [**ProcessBatchRequest**](ProcessBatchRequest.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **remove_from_batch**
> remove_from_batch(batch_id, request)



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

api_instance = ShipEngine::BatchesApi.new

batch_id = "batch_id_example" # String | 

request = ShipEngine::ModifyBatchRequest.new # ModifyBatchRequest | 


begin
  api_instance.remove_from_batch(batch_id, request)
rescue ShipEngine::ApiError => e
  puts "Exception when calling BatchesApi->remove_from_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**|  | 
 **request** | [**ModifyBatchRequest**](ModifyBatchRequest.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



