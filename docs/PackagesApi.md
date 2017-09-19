# ShipEngine::PackagesApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](PackagesApi.md#create) | **POST** /v1/packages | 
[**delete**](PackagesApi.md#delete) | **DELETE** /v1/packages/{package_id} | 
[**get**](PackagesApi.md#get) | **GET** /v1/packages/{package_id} | 
[**list**](PackagesApi.md#list) | **GET** /v1/packages | 
[**update**](PackagesApi.md#update) | **PUT** /v1/packages/{package_id} | 


# **create**
> Package create(package)



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

api_instance = ShipEngine::PackagesApi.new

package = ShipEngine::Package.new # Package | 


begin
  result = api_instance.create(package)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling PackagesApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | [**Package**](Package.md)|  | 

### Return type

[**Package**](Package.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **delete**
> delete(package_id)



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

api_instance = ShipEngine::PackagesApi.new

package_id = "package_id_example" # String | 


begin
  api_instance.delete(package_id)
rescue ShipEngine::ApiError => e
  puts "Exception when calling PackagesApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **get**
> Package get(package_id)



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

api_instance = ShipEngine::PackagesApi.new

package_id = "package_id_example" # String | 


begin
  result = api_instance.get(package_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling PackagesApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_id** | **String**|  | 

### Return type

[**Package**](Package.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **list**
> PackagesListResponse list



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

api_instance = ShipEngine::PackagesApi.new

begin
  result = api_instance.list
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling PackagesApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PackagesListResponse**](PackagesListResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **update**
> update(package_id, package)



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

api_instance = ShipEngine::PackagesApi.new

package_id = "package_id_example" # String | 

package = ShipEngine::Package.new # Package | 


begin
  api_instance.update(package_id, package)
rescue ShipEngine::ApiError => e
  puts "Exception when calling PackagesApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_id** | **String**|  | 
 **package** | [**Package**](Package.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



