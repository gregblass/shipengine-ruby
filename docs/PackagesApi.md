# ShipEngineApi::PackagesApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**packages_create**](PackagesApi.md#packages_create) | **POST** /v1/packages | 
[**packages_delete**](PackagesApi.md#packages_delete) | **DELETE** /v1/packages/{package_id} | 
[**packages_get**](PackagesApi.md#packages_get) | **GET** /v1/packages/{package_id} | 
[**packages_list**](PackagesApi.md#packages_list) | **GET** /v1/packages | 
[**packages_update**](PackagesApi.md#packages_update) | **PUT** /v1/packages/{package_id} | 


# **packages_create**
> Package packages_create(package, api_key)



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

api_instance = ShipEngineApi::PackagesApi.new

package = ShipEngineApi::Package.new # Package | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.packages_create(package, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling PackagesApi->packages_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | [**Package**](Package.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**Package**](Package.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **packages_delete**
> packages_delete(package_id, api_key)



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

api_instance = ShipEngineApi::PackagesApi.new

package_id = "package_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.packages_delete(package_id, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling PackagesApi->packages_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **packages_get**
> Package packages_get(package_id, api_key)



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

api_instance = ShipEngineApi::PackagesApi.new

package_id = "package_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.packages_get(package_id, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling PackagesApi->packages_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**Package**](Package.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **packages_list**
> PackagesListResponse packages_list(api_key)



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

api_instance = ShipEngineApi::PackagesApi.new

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.packages_list(api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling PackagesApi->packages_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**PackagesListResponse**](PackagesListResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **packages_update**
> packages_update(package_id, package, api_key)



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

api_instance = ShipEngineApi::PackagesApi.new

package_id = "package_id_example" # String | 

package = ShipEngineApi::Package.new # Package | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.packages_update(package_id, package, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling PackagesApi->packages_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_id** | **String**|  | 
 **package** | [**Package**](Package.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



