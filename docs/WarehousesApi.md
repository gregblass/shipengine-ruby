# ShipEngine::WarehousesApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](WarehousesApi.md#create) | **POST** /v1/warehouses | 
[**delete**](WarehousesApi.md#delete) | **DELETE** /v1/warehouses/{warehouse_id} | 
[**get**](WarehousesApi.md#get) | **GET** /v1/warehouses/{warehouse_id} | 
[**list**](WarehousesApi.md#list) | **GET** /v1/warehouses | 
[**update**](WarehousesApi.md#update) | **PUT** /v1/warehouses/{warehouse_id} | 


# **create**
> WarehouseDTO create(request)



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

api_instance = ShipEngine::WarehousesApi.new

request = ShipEngine::WarehouseRequest.new # WarehouseRequest | 


begin
  result = api_instance.create(request)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling WarehousesApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**WarehouseRequest**](WarehouseRequest.md)|  | 

### Return type

[**WarehouseDTO**](WarehouseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **delete**
> delete(warehouse_id)



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

api_instance = ShipEngine::WarehousesApi.new

warehouse_id = "warehouse_id_example" # String | 


begin
  api_instance.delete(warehouse_id)
rescue ShipEngine::ApiError => e
  puts "Exception when calling WarehousesApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouse_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **get**
> WarehouseDTO get(warehouse_id)



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

api_instance = ShipEngine::WarehousesApi.new

warehouse_id = "warehouse_id_example" # String | 


begin
  result = api_instance.get(warehouse_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling WarehousesApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouse_id** | **String**|  | 

### Return type

[**WarehouseDTO**](WarehouseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **list**
> WarehouseListDTO list



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

api_instance = ShipEngine::WarehousesApi.new

begin
  result = api_instance.list
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling WarehousesApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WarehouseListDTO**](WarehouseListDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **update**
> update(warehouse_id, request)



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

api_instance = ShipEngine::WarehousesApi.new

warehouse_id = "warehouse_id_example" # String | 

request = ShipEngine::WarehouseRequest.new # WarehouseRequest | 


begin
  api_instance.update(warehouse_id, request)
rescue ShipEngine::ApiError => e
  puts "Exception when calling WarehousesApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouse_id** | **String**|  | 
 **request** | [**WarehouseRequest**](WarehouseRequest.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



