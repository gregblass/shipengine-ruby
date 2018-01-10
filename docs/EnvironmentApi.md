# ShipEngineApi::EnvironmentApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**environment_create_webhook**](EnvironmentApi.md#environment_create_webhook) | **POST** /v1/environment/webhooks | 
[**environment_delete_webhook**](EnvironmentApi.md#environment_delete_webhook) | **DELETE** /v1/environment/webhooks/{webhook_id} | 
[**environment_get_webhook_by_id**](EnvironmentApi.md#environment_get_webhook_by_id) | **GET** /v1/environment/webhooks/{webhook_id} | 
[**environment_update_webhook**](EnvironmentApi.md#environment_update_webhook) | **PUT** /v1/environment/webhooks/{webhook_id} | 
[**environment_webhooks**](EnvironmentApi.md#environment_webhooks) | **GET** /v1/environment/webhooks | 
[**environment_whoami**](EnvironmentApi.md#environment_whoami) | **GET** /v1/environment/whoami | 


# **environment_create_webhook**
> WebhookDTO environment_create_webhook(create_webhook_dto, api_key)



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

api_instance = ShipEngineApi::EnvironmentApi.new

create_webhook_dto = ShipEngineApi::CreateWebhookDTO.new # CreateWebhookDTO | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.environment_create_webhook(create_webhook_dto, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling EnvironmentApi->environment_create_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_webhook_dto** | [**CreateWebhookDTO**](CreateWebhookDTO.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**WebhookDTO**](WebhookDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **environment_delete_webhook**
> environment_delete_webhook(webhook_id, api_key)



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

api_instance = ShipEngineApi::EnvironmentApi.new

webhook_id = "webhook_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.environment_delete_webhook(webhook_id, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling EnvironmentApi->environment_delete_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **environment_get_webhook_by_id**
> WebhookDTO environment_get_webhook_by_id(webhook_id, api_key)



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

api_instance = ShipEngineApi::EnvironmentApi.new

webhook_id = "webhook_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.environment_get_webhook_by_id(webhook_id, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling EnvironmentApi->environment_get_webhook_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**WebhookDTO**](WebhookDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **environment_update_webhook**
> environment_update_webhook(webhook_id, update_webhook_dto, api_key)



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

api_instance = ShipEngineApi::EnvironmentApi.new

webhook_id = "webhook_id_example" # String | 

update_webhook_dto = ShipEngineApi::UpdateWebhookDTO.new # UpdateWebhookDTO | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.environment_update_webhook(webhook_id, update_webhook_dto, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling EnvironmentApi->environment_update_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | **String**|  | 
 **update_webhook_dto** | [**UpdateWebhookDTO**](UpdateWebhookDTO.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **environment_webhooks**
> Array&lt;WebhookDTO&gt; environment_webhooks(api_key)



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

api_instance = ShipEngineApi::EnvironmentApi.new

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.environment_webhooks(api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling EnvironmentApi->environment_webhooks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**Array&lt;WebhookDTO&gt;**](WebhookDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **environment_whoami**
> Object environment_whoami(api_key)



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

api_instance = ShipEngineApi::EnvironmentApi.new

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.environment_whoami(api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling EnvironmentApi->environment_whoami: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

**Object**

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



