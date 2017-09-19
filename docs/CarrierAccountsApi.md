# ShipEngine::CarrierAccountsApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**access_worldwide_connect_account**](CarrierAccountsApi.md#access_worldwide_connect_account) | **POST** /v1/connections/carriers/access_worldwide | 
[**access_worldwide_disconnect_account**](CarrierAccountsApi.md#access_worldwide_disconnect_account) | **DELETE** /v1/connections/carriers/access_worldwide/{carrier_id} | 
[**apc_connect_account**](CarrierAccountsApi.md#apc_connect_account) | **POST** /v1/connections/carriers/apc | 
[**apc_disconnect_account**](CarrierAccountsApi.md#apc_disconnect_account) | **DELETE** /v1/connections/carriers/apc/{carrier_id} | 
[**asendia_connect_account**](CarrierAccountsApi.md#asendia_connect_account) | **POST** /v1/connections/carriers/asendia | 
[**asendia_disconnect_account**](CarrierAccountsApi.md#asendia_disconnect_account) | **DELETE** /v1/connections/carriers/asendia/{carrier_id} | 
[**dhl_express_connect_account**](CarrierAccountsApi.md#dhl_express_connect_account) | **POST** /v1/connections/carriers/dhl_express | 
[**dhl_express_disconnect_account**](CarrierAccountsApi.md#dhl_express_disconnect_account) | **DELETE** /v1/connections/carriers/dhl_express/{carrier_id} | 
[**dhl_express_update_settings**](CarrierAccountsApi.md#dhl_express_update_settings) | **PUT** /v1/connections/carriers/dhl_express/{carrier_id}/settings | 
[**endicia_connect_account**](CarrierAccountsApi.md#endicia_connect_account) | **POST** /v1/connections/carriers/endicia | 
[**endicia_disconnect_account**](CarrierAccountsApi.md#endicia_disconnect_account) | **DELETE** /v1/connections/carriers/endicia/{carrier_id} | 
[**fedex_connect_account**](CarrierAccountsApi.md#fedex_connect_account) | **POST** /v1/connections/carriers/fedex | 
[**fedex_disconnect_account**](CarrierAccountsApi.md#fedex_disconnect_account) | **DELETE** /v1/connections/carriers/fedex/{carrier_id} | 
[**fedex_update_settings**](CarrierAccountsApi.md#fedex_update_settings) | **PUT** /v1/connections/carriers/fedex/{carrier_id}/settings | 
[**first_mile_connect_account**](CarrierAccountsApi.md#first_mile_connect_account) | **POST** /v1/connections/carriers/firstmile | 
[**first_mile_disconnect_account**](CarrierAccountsApi.md#first_mile_disconnect_account) | **DELETE** /v1/connections/carriers/firstmile/{carrier_id} | 
[**globegistics_connect_account**](CarrierAccountsApi.md#globegistics_connect_account) | **POST** /v1/connections/carriers/globegistics | 
[**globegistics_disconnect_account**](CarrierAccountsApi.md#globegistics_disconnect_account) | **DELETE** /v1/connections/carriers/globegistics/{carrier_id} | 
[**imex_connect_account**](CarrierAccountsApi.md#imex_connect_account) | **POST** /v1/connections/carriers/imex | 
[**imex_disconnect_account**](CarrierAccountsApi.md#imex_disconnect_account) | **DELETE** /v1/connections/carriers/imex/{carrier_id} | 
[**on_trac_connect_account**](CarrierAccountsApi.md#on_trac_connect_account) | **POST** /v1/connections/carriers/ontrac | 
[**on_trac_disconnect_account**](CarrierAccountsApi.md#on_trac_disconnect_account) | **DELETE** /v1/connections/carriers/ontrac/{carrier_id} | 
[**rr_donnelley_connect_account**](CarrierAccountsApi.md#rr_donnelley_connect_account) | **POST** /v1/connections/carriers/rr_donnelley | 
[**rr_donnelley_disconnect_account**](CarrierAccountsApi.md#rr_donnelley_disconnect_account) | **DELETE** /v1/connections/carriers/rr_donnelley/{carrier_id} | 
[**stamps_connect_account**](CarrierAccountsApi.md#stamps_connect_account) | **POST** /v1/connections/carriers/stamps_com | 
[**stamps_disconnect_account**](CarrierAccountsApi.md#stamps_disconnect_account) | **DELETE** /v1/connections/carriers/stamps_com/{carrier_id} | 
[**ups_connect_account**](CarrierAccountsApi.md#ups_connect_account) | **POST** /v1/connections/carriers/ups | 
[**ups_disconnect_account**](CarrierAccountsApi.md#ups_disconnect_account) | **DELETE** /v1/connections/carriers/ups/{carrier_id} | 
[**ups_update_settings**](CarrierAccountsApi.md#ups_update_settings) | **PUT** /v1/connections/carriers/ups/{carrier_id}/settings | 


# **access_worldwide_connect_account**
> ConnectAccountResponseDTO access_worldwide_connect_account(model)



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

api_instance = ShipEngine::CarrierAccountsApi.new

model = ShipEngine::AccessWorldwideAccountInformationDTO.new # AccessWorldwideAccountInformationDTO | 


begin
  result = api_instance.access_worldwide_connect_account(model)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->access_worldwide_connect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**AccessWorldwideAccountInformationDTO**](AccessWorldwideAccountInformationDTO.md)|  | 

### Return type

[**ConnectAccountResponseDTO**](ConnectAccountResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **access_worldwide_disconnect_account**
> access_worldwide_disconnect_account(carrier_id)



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

api_instance = ShipEngine::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 


begin
  api_instance.access_worldwide_disconnect_account(carrier_id)
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->access_worldwide_disconnect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **apc_connect_account**
> ConnectAccountResponseDTO apc_connect_account(model)



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

api_instance = ShipEngine::CarrierAccountsApi.new

model = ShipEngine::ApcAccountInformationDTO.new # ApcAccountInformationDTO | 


begin
  result = api_instance.apc_connect_account(model)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->apc_connect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**ApcAccountInformationDTO**](ApcAccountInformationDTO.md)|  | 

### Return type

[**ConnectAccountResponseDTO**](ConnectAccountResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **apc_disconnect_account**
> apc_disconnect_account(carrier_id)



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

api_instance = ShipEngine::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 


begin
  api_instance.apc_disconnect_account(carrier_id)
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->apc_disconnect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **asendia_connect_account**
> ConnectAccountResponseDTO asendia_connect_account(model)



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

api_instance = ShipEngine::CarrierAccountsApi.new

model = ShipEngine::AsendiaAccountInformationDTO.new # AsendiaAccountInformationDTO | 


begin
  result = api_instance.asendia_connect_account(model)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->asendia_connect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**AsendiaAccountInformationDTO**](AsendiaAccountInformationDTO.md)|  | 

### Return type

[**ConnectAccountResponseDTO**](ConnectAccountResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **asendia_disconnect_account**
> asendia_disconnect_account(carrier_id)



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

api_instance = ShipEngine::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 


begin
  api_instance.asendia_disconnect_account(carrier_id)
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->asendia_disconnect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **dhl_express_connect_account**
> ConnectAccountResponseDTO dhl_express_connect_account(model)



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

api_instance = ShipEngine::CarrierAccountsApi.new

model = ShipEngine::DHLExpressAccountInformationDTO.new # DHLExpressAccountInformationDTO | 


begin
  result = api_instance.dhl_express_connect_account(model)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->dhl_express_connect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**DHLExpressAccountInformationDTO**](DHLExpressAccountInformationDTO.md)|  | 

### Return type

[**ConnectAccountResponseDTO**](ConnectAccountResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **dhl_express_disconnect_account**
> dhl_express_disconnect_account(carrier_id)



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

api_instance = ShipEngine::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 


begin
  api_instance.dhl_express_disconnect_account(carrier_id)
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->dhl_express_disconnect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **dhl_express_update_settings**
> dhl_express_update_settings(carrier_id, settings)



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

api_instance = ShipEngine::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 

settings = ShipEngine::DHLExpressAccountSettingsDTO.new # DHLExpressAccountSettingsDTO | 


begin
  api_instance.dhl_express_update_settings(carrier_id, settings)
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->dhl_express_update_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 
 **settings** | [**DHLExpressAccountSettingsDTO**](DHLExpressAccountSettingsDTO.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **endicia_connect_account**
> ConnectAccountResponseDTO endicia_connect_account(model)



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

api_instance = ShipEngine::CarrierAccountsApi.new

model = ShipEngine::EndiciaAccountInformationDTO.new # EndiciaAccountInformationDTO | 


begin
  result = api_instance.endicia_connect_account(model)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->endicia_connect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**EndiciaAccountInformationDTO**](EndiciaAccountInformationDTO.md)|  | 

### Return type

[**ConnectAccountResponseDTO**](ConnectAccountResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **endicia_disconnect_account**
> endicia_disconnect_account(carrier_id)



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

api_instance = ShipEngine::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 


begin
  api_instance.endicia_disconnect_account(carrier_id)
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->endicia_disconnect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **fedex_connect_account**
> ConnectAccountResponseDTO fedex_connect_account(model)



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

api_instance = ShipEngine::CarrierAccountsApi.new

model = ShipEngine::FedExAccountInformationDTO.new # FedExAccountInformationDTO | 


begin
  result = api_instance.fedex_connect_account(model)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->fedex_connect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**FedExAccountInformationDTO**](FedExAccountInformationDTO.md)|  | 

### Return type

[**ConnectAccountResponseDTO**](ConnectAccountResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **fedex_disconnect_account**
> fedex_disconnect_account(carrier_id)



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

api_instance = ShipEngine::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 


begin
  api_instance.fedex_disconnect_account(carrier_id)
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->fedex_disconnect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **fedex_update_settings**
> fedex_update_settings(carrier_id, settings)



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

api_instance = ShipEngine::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 

settings = ShipEngine::FedExAccountSettingsDTO.new # FedExAccountSettingsDTO | 


begin
  api_instance.fedex_update_settings(carrier_id, settings)
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->fedex_update_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 
 **settings** | [**FedExAccountSettingsDTO**](FedExAccountSettingsDTO.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **first_mile_connect_account**
> ConnectAccountResponseDTO first_mile_connect_account(model)



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

api_instance = ShipEngine::CarrierAccountsApi.new

model = ShipEngine::FirstMileAccountInformationDTO.new # FirstMileAccountInformationDTO | 


begin
  result = api_instance.first_mile_connect_account(model)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->first_mile_connect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**FirstMileAccountInformationDTO**](FirstMileAccountInformationDTO.md)|  | 

### Return type

[**ConnectAccountResponseDTO**](ConnectAccountResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **first_mile_disconnect_account**
> first_mile_disconnect_account(carrier_id)



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

api_instance = ShipEngine::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 


begin
  api_instance.first_mile_disconnect_account(carrier_id)
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->first_mile_disconnect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **globegistics_connect_account**
> ConnectAccountResponseDTO globegistics_connect_account(model)



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

api_instance = ShipEngine::CarrierAccountsApi.new

model = ShipEngine::GlobegisticsAccountInformationDTO.new # GlobegisticsAccountInformationDTO | 


begin
  result = api_instance.globegistics_connect_account(model)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->globegistics_connect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**GlobegisticsAccountInformationDTO**](GlobegisticsAccountInformationDTO.md)|  | 

### Return type

[**ConnectAccountResponseDTO**](ConnectAccountResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **globegistics_disconnect_account**
> globegistics_disconnect_account(carrier_id)



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

api_instance = ShipEngine::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 


begin
  api_instance.globegistics_disconnect_account(carrier_id)
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->globegistics_disconnect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **imex_connect_account**
> ConnectAccountResponseDTO imex_connect_account(model)



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

api_instance = ShipEngine::CarrierAccountsApi.new

model = ShipEngine::ImexAccountInformationDTO.new # ImexAccountInformationDTO | 


begin
  result = api_instance.imex_connect_account(model)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->imex_connect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**ImexAccountInformationDTO**](ImexAccountInformationDTO.md)|  | 

### Return type

[**ConnectAccountResponseDTO**](ConnectAccountResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **imex_disconnect_account**
> imex_disconnect_account(carrier_id)



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

api_instance = ShipEngine::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 


begin
  api_instance.imex_disconnect_account(carrier_id)
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->imex_disconnect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **on_trac_connect_account**
> ConnectAccountResponseDTO on_trac_connect_account(model)



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

api_instance = ShipEngine::CarrierAccountsApi.new

model = ShipEngine::OnTracAccountInformationDTO.new # OnTracAccountInformationDTO | 


begin
  result = api_instance.on_trac_connect_account(model)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->on_trac_connect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**OnTracAccountInformationDTO**](OnTracAccountInformationDTO.md)|  | 

### Return type

[**ConnectAccountResponseDTO**](ConnectAccountResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **on_trac_disconnect_account**
> on_trac_disconnect_account(carrier_id)



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

api_instance = ShipEngine::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 


begin
  api_instance.on_trac_disconnect_account(carrier_id)
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->on_trac_disconnect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **rr_donnelley_connect_account**
> ConnectAccountResponseDTO rr_donnelley_connect_account(model)



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

api_instance = ShipEngine::CarrierAccountsApi.new

model = ShipEngine::RrDonnelleyAccountInformationDTO.new # RrDonnelleyAccountInformationDTO | 


begin
  result = api_instance.rr_donnelley_connect_account(model)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->rr_donnelley_connect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**RrDonnelleyAccountInformationDTO**](RrDonnelleyAccountInformationDTO.md)|  | 

### Return type

[**ConnectAccountResponseDTO**](ConnectAccountResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **rr_donnelley_disconnect_account**
> rr_donnelley_disconnect_account(carrier_id)



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

api_instance = ShipEngine::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 


begin
  api_instance.rr_donnelley_disconnect_account(carrier_id)
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->rr_donnelley_disconnect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **stamps_connect_account**
> ConnectAccountResponseDTO stamps_connect_account(model)



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

api_instance = ShipEngine::CarrierAccountsApi.new

model = ShipEngine::StampsAccountInformationDTO.new # StampsAccountInformationDTO | 


begin
  result = api_instance.stamps_connect_account(model)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->stamps_connect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**StampsAccountInformationDTO**](StampsAccountInformationDTO.md)|  | 

### Return type

[**ConnectAccountResponseDTO**](ConnectAccountResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **stamps_disconnect_account**
> stamps_disconnect_account(carrier_id)



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

api_instance = ShipEngine::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 


begin
  api_instance.stamps_disconnect_account(carrier_id)
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->stamps_disconnect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **ups_connect_account**
> ConnectAccountResponseDTO ups_connect_account(model)



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

api_instance = ShipEngine::CarrierAccountsApi.new

model = ShipEngine::UPSAccountInformationDTO.new # UPSAccountInformationDTO | 


begin
  result = api_instance.ups_connect_account(model)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->ups_connect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**UPSAccountInformationDTO**](UPSAccountInformationDTO.md)|  | 

### Return type

[**ConnectAccountResponseDTO**](ConnectAccountResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **ups_disconnect_account**
> ups_disconnect_account(carrier_id)



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

api_instance = ShipEngine::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 


begin
  api_instance.ups_disconnect_account(carrier_id)
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->ups_disconnect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **ups_update_settings**
> ups_update_settings(carrier_id, settings)



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

api_instance = ShipEngine::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 

settings = ShipEngine::UPSAccountSettingsDTO.new # UPSAccountSettingsDTO | 


begin
  api_instance.ups_update_settings(carrier_id, settings)
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->ups_update_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 
 **settings** | [**UPSAccountSettingsDTO**](UPSAccountSettingsDTO.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



