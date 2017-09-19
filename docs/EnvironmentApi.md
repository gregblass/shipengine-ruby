# ShipEngine::EnvironmentApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**webhooks**](EnvironmentApi.md#webhooks) | **GET** /v1/environment/webhooks | 
[**whoami**](EnvironmentApi.md#whoami) | **GET** /v1/environment/whoami | 


# **webhooks**
> Object webhooks



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

api_instance = ShipEngine::EnvironmentApi.new

begin
  result = api_instance.webhooks
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling EnvironmentApi->webhooks: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **whoami**
> Object whoami



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

api_instance = ShipEngine::EnvironmentApi.new

begin
  result = api_instance.whoami
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling EnvironmentApi->whoami: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



