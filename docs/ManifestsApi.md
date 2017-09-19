# ShipEngine::ManifestsApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ManifestsApi.md#create) | **POST** /v1/manifests | 
[**get**](ManifestsApi.md#get) | **GET** /v1/manifests/{manifest_id} | 
[**list**](ManifestsApi.md#list) | **GET** /v1/manifests | 


# **create**
> Manifest create(request)



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

api_instance = ShipEngine::ManifestsApi.new

request = ShipEngine::CreateManifestRequest.new # CreateManifestRequest | 


begin
  result = api_instance.create(request)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling ManifestsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CreateManifestRequest**](CreateManifestRequest.md)|  | 

### Return type

[**Manifest**](Manifest.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **get**
> Manifest get(manifest_id)



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

api_instance = ShipEngine::ManifestsApi.new

manifest_id = "manifest_id_example" # String | 


begin
  result = api_instance.get(manifest_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling ManifestsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **manifest_id** | **String**|  | 

### Return type

[**Manifest**](Manifest.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **list**
> ManifestsListResponse list(opts)



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

api_instance = ShipEngine::ManifestsApi.new

opts = { 
  warehouse_id: "warehouse_id_example", # String | 
  ship_date_start: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | 
  ship_date_end: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | 
  created_at_start: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | 
  created_at_end: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | 
  carrier_id: "carrier_id_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.list(opts)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling ManifestsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouse_id** | **String**|  | [optional] 
 **ship_date_start** | **DateTime**|  | [optional] 
 **ship_date_end** | **DateTime**|  | [optional] 
 **created_at_start** | **DateTime**|  | [optional] 
 **created_at_end** | **DateTime**|  | [optional] 
 **carrier_id** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**ManifestsListResponse**](ManifestsListResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



