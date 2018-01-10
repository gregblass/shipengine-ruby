# ShipEngineApi::ManifestsApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**manifests_create**](ManifestsApi.md#manifests_create) | **POST** /v1/manifests | 
[**manifests_get**](ManifestsApi.md#manifests_get) | **GET** /v1/manifests/{manifest_id} | 
[**manifests_list**](ManifestsApi.md#manifests_list) | **GET** /v1/manifests | 


# **manifests_create**
> Manifest manifests_create(request, api_key)



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

api_instance = ShipEngineApi::ManifestsApi.new

request = ShipEngineApi::CreateManifestRequest.new # CreateManifestRequest | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.manifests_create(request, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling ManifestsApi->manifests_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CreateManifestRequest**](CreateManifestRequest.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**Manifest**](Manifest.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **manifests_get**
> Manifest manifests_get(manifest_id, api_key)



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

api_instance = ShipEngineApi::ManifestsApi.new

manifest_id = "manifest_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.manifests_get(manifest_id, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling ManifestsApi->manifests_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **manifest_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**Manifest**](Manifest.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **manifests_list**
> ManifestsListResponse manifests_list(api_key, opts)



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

api_instance = ShipEngineApi::ManifestsApi.new

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key

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
  result = api_instance.manifests_list(api_key, opts)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling ManifestsApi->manifests_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]
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



