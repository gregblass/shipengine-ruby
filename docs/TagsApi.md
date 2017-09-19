# ShipEngine::TagsApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_tag**](TagsApi.md#add_tag) | **POST** /v1/tags/{tag_name} | 
[**delete**](TagsApi.md#delete) | **DELETE** /v1/tags/{tag_name} | 
[**list**](TagsApi.md#list) | **GET** /v1/tags | 
[**update**](TagsApi.md#update) | **PUT** /v1/tags/{tag_name}/{new_name} | 


# **add_tag**
> add_tag(tag_name)



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

api_instance = ShipEngine::TagsApi.new

tag_name = "tag_name_example" # String | 


begin
  api_instance.add_tag(tag_name)
rescue ShipEngine::ApiError => e
  puts "Exception when calling TagsApi->add_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_name** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **delete**
> ListTagResponse delete(tag_name)



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

api_instance = ShipEngine::TagsApi.new

tag_name = "tag_name_example" # String | 


begin
  result = api_instance.delete(tag_name)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling TagsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_name** | **String**|  | 

### Return type

[**ListTagResponse**](ListTagResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **list**
> ListTagResponse list



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

api_instance = ShipEngine::TagsApi.new

begin
  result = api_instance.list
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling TagsApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListTagResponse**](ListTagResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **update**
> update(tag_name, new_name)



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

api_instance = ShipEngine::TagsApi.new

tag_name = "tag_name_example" # String | 

new_name = "new_name_example" # String | 


begin
  api_instance.update(tag_name, new_name)
rescue ShipEngine::ApiError => e
  puts "Exception when calling TagsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_name** | **String**|  | 
 **new_name** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



