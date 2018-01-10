# ShipEngineApi::CarrierAccountsApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**access_worldwide_account_carrier_connect_account**](CarrierAccountsApi.md#access_worldwide_account_carrier_connect_account) | **POST** /v1/connections/carriers/access_worldwide | 
[**access_worldwide_account_carrier_disconnect_account**](CarrierAccountsApi.md#access_worldwide_account_carrier_disconnect_account) | **DELETE** /v1/connections/carriers/access_worldwide/{carrier_id} | 
[**apc_account_carrier_connect_account**](CarrierAccountsApi.md#apc_account_carrier_connect_account) | **POST** /v1/connections/carriers/apc | 
[**apc_account_carrier_disconnect_account**](CarrierAccountsApi.md#apc_account_carrier_disconnect_account) | **DELETE** /v1/connections/carriers/apc/{carrier_id} | 
[**asendia_account_carrier_connect_account**](CarrierAccountsApi.md#asendia_account_carrier_connect_account) | **POST** /v1/connections/carriers/asendia | 
[**asendia_account_carrier_disconnect_account**](CarrierAccountsApi.md#asendia_account_carrier_disconnect_account) | **DELETE** /v1/connections/carriers/asendia/{carrier_id} | 
[**d_hl_express_account_carrier_connect_account**](CarrierAccountsApi.md#d_hl_express_account_carrier_connect_account) | **POST** /v1/connections/carriers/dhl_express | 
[**d_hl_express_account_carrier_disconnect_account**](CarrierAccountsApi.md#d_hl_express_account_carrier_disconnect_account) | **DELETE** /v1/connections/carriers/dhl_express/{carrier_id} | 
[**d_hl_express_account_carrier_update_settings**](CarrierAccountsApi.md#d_hl_express_account_carrier_update_settings) | **PUT** /v1/connections/carriers/dhl_express/{carrier_id}/settings | 
[**endicia_account_carrier_connect_account**](CarrierAccountsApi.md#endicia_account_carrier_connect_account) | **POST** /v1/connections/carriers/endicia | 
[**endicia_account_carrier_disconnect_account**](CarrierAccountsApi.md#endicia_account_carrier_disconnect_account) | **DELETE** /v1/connections/carriers/endicia/{carrier_id} | 
[**fed_ex_account_carrier_connect_account**](CarrierAccountsApi.md#fed_ex_account_carrier_connect_account) | **POST** /v1/connections/carriers/fedex | 
[**fed_ex_account_carrier_disconnect_account**](CarrierAccountsApi.md#fed_ex_account_carrier_disconnect_account) | **DELETE** /v1/connections/carriers/fedex/{carrier_id} | 
[**fed_ex_account_carrier_update_settings**](CarrierAccountsApi.md#fed_ex_account_carrier_update_settings) | **PUT** /v1/connections/carriers/fedex/{carrier_id}/settings | 
[**first_mile_account_carrier_connect_account**](CarrierAccountsApi.md#first_mile_account_carrier_connect_account) | **POST** /v1/connections/carriers/firstmile | 
[**first_mile_account_carrier_disconnect_account**](CarrierAccountsApi.md#first_mile_account_carrier_disconnect_account) | **DELETE** /v1/connections/carriers/firstmile/{carrier_id} | 
[**globegistics_account_carrier_connect_account**](CarrierAccountsApi.md#globegistics_account_carrier_connect_account) | **POST** /v1/connections/carriers/globegistics | 
[**globegistics_account_carrier_disconnect_account**](CarrierAccountsApi.md#globegistics_account_carrier_disconnect_account) | **DELETE** /v1/connections/carriers/globegistics/{carrier_id} | 
[**imex_account_carrier_connect_account**](CarrierAccountsApi.md#imex_account_carrier_connect_account) | **POST** /v1/connections/carriers/imex | 
[**imex_account_carrier_disconnect_account**](CarrierAccountsApi.md#imex_account_carrier_disconnect_account) | **DELETE** /v1/connections/carriers/imex/{carrier_id} | 
[**newgistics_account_carrier_connect_account**](CarrierAccountsApi.md#newgistics_account_carrier_connect_account) | **POST** /v1/connections/carriers/newgistics | 
[**newgistics_account_carrier_disconnect_account**](CarrierAccountsApi.md#newgistics_account_carrier_disconnect_account) | **DELETE** /v1/connections/carriers/newgistics/{carrier_id} | 
[**newgistics_account_carrier_update_settings**](CarrierAccountsApi.md#newgistics_account_carrier_update_settings) | **PUT** /v1/connections/carriers/newgistics/{carrier_id}/settings | 
[**on_trac_account_carrier_connect_account**](CarrierAccountsApi.md#on_trac_account_carrier_connect_account) | **POST** /v1/connections/carriers/ontrac | 
[**on_trac_account_carrier_disconnect_account**](CarrierAccountsApi.md#on_trac_account_carrier_disconnect_account) | **DELETE** /v1/connections/carriers/ontrac/{carrier_id} | 
[**rr_donnelley_account_carrier_connect_account**](CarrierAccountsApi.md#rr_donnelley_account_carrier_connect_account) | **POST** /v1/connections/carriers/rr_donnelley | 
[**rr_donnelley_account_carrier_disconnect_account**](CarrierAccountsApi.md#rr_donnelley_account_carrier_disconnect_account) | **DELETE** /v1/connections/carriers/rr_donnelley/{carrier_id} | 
[**stamps_account_carrier_connect_account**](CarrierAccountsApi.md#stamps_account_carrier_connect_account) | **POST** /v1/connections/carriers/stamps_com | 
[**stamps_account_carrier_disconnect_account**](CarrierAccountsApi.md#stamps_account_carrier_disconnect_account) | **DELETE** /v1/connections/carriers/stamps_com/{carrier_id} | 
[**u_ps_account_carrier_connect_account**](CarrierAccountsApi.md#u_ps_account_carrier_connect_account) | **POST** /v1/connections/carriers/ups | 
[**u_ps_account_carrier_disconnect_account**](CarrierAccountsApi.md#u_ps_account_carrier_disconnect_account) | **DELETE** /v1/connections/carriers/ups/{carrier_id} | 
[**u_ps_account_carrier_update_settings**](CarrierAccountsApi.md#u_ps_account_carrier_update_settings) | **PUT** /v1/connections/carriers/ups/{carrier_id}/settings | 


# **access_worldwide_account_carrier_connect_account**
> ConnectAccountResponseDTO access_worldwide_account_carrier_connect_account(model, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

model = ShipEngineApi::AccessWorldwideAccountInformationDTO.new # AccessWorldwideAccountInformationDTO | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.access_worldwide_account_carrier_connect_account(model, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->access_worldwide_account_carrier_connect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**AccessWorldwideAccountInformationDTO**](AccessWorldwideAccountInformationDTO.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**ConnectAccountResponseDTO**](ConnectAccountResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **access_worldwide_account_carrier_disconnect_account**
> access_worldwide_account_carrier_disconnect_account(carrier_id, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.access_worldwide_account_carrier_disconnect_account(carrier_id, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->access_worldwide_account_carrier_disconnect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **apc_account_carrier_connect_account**
> ConnectAccountResponseDTO apc_account_carrier_connect_account(model, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

model = ShipEngineApi::ApcAccountInformationDTO.new # ApcAccountInformationDTO | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.apc_account_carrier_connect_account(model, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->apc_account_carrier_connect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**ApcAccountInformationDTO**](ApcAccountInformationDTO.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**ConnectAccountResponseDTO**](ConnectAccountResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **apc_account_carrier_disconnect_account**
> apc_account_carrier_disconnect_account(carrier_id, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.apc_account_carrier_disconnect_account(carrier_id, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->apc_account_carrier_disconnect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **asendia_account_carrier_connect_account**
> ConnectAccountResponseDTO asendia_account_carrier_connect_account(model, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

model = ShipEngineApi::AsendiaAccountInformationDTO.new # AsendiaAccountInformationDTO | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.asendia_account_carrier_connect_account(model, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->asendia_account_carrier_connect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**AsendiaAccountInformationDTO**](AsendiaAccountInformationDTO.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**ConnectAccountResponseDTO**](ConnectAccountResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **asendia_account_carrier_disconnect_account**
> asendia_account_carrier_disconnect_account(carrier_id, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.asendia_account_carrier_disconnect_account(carrier_id, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->asendia_account_carrier_disconnect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **d_hl_express_account_carrier_connect_account**
> ConnectAccountResponseDTO d_hl_express_account_carrier_connect_account(model, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

model = ShipEngineApi::DHLExpressAccountInformationDTO.new # DHLExpressAccountInformationDTO | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.d_hl_express_account_carrier_connect_account(model, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->d_hl_express_account_carrier_connect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**DHLExpressAccountInformationDTO**](DHLExpressAccountInformationDTO.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**ConnectAccountResponseDTO**](ConnectAccountResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **d_hl_express_account_carrier_disconnect_account**
> d_hl_express_account_carrier_disconnect_account(carrier_id, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.d_hl_express_account_carrier_disconnect_account(carrier_id, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->d_hl_express_account_carrier_disconnect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **d_hl_express_account_carrier_update_settings**
> d_hl_express_account_carrier_update_settings(carrier_id, settings, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 

settings = ShipEngineApi::DHLExpressAccountSettingsDTO.new # DHLExpressAccountSettingsDTO | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.d_hl_express_account_carrier_update_settings(carrier_id, settings, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->d_hl_express_account_carrier_update_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 
 **settings** | [**DHLExpressAccountSettingsDTO**](DHLExpressAccountSettingsDTO.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **endicia_account_carrier_connect_account**
> ConnectAccountResponseDTO endicia_account_carrier_connect_account(model, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

model = ShipEngineApi::EndiciaAccountInformationDTO.new # EndiciaAccountInformationDTO | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.endicia_account_carrier_connect_account(model, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->endicia_account_carrier_connect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**EndiciaAccountInformationDTO**](EndiciaAccountInformationDTO.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**ConnectAccountResponseDTO**](ConnectAccountResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **endicia_account_carrier_disconnect_account**
> endicia_account_carrier_disconnect_account(carrier_id, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.endicia_account_carrier_disconnect_account(carrier_id, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->endicia_account_carrier_disconnect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **fed_ex_account_carrier_connect_account**
> ConnectAccountResponseDTO fed_ex_account_carrier_connect_account(model, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

model = ShipEngineApi::FedExAccountInformationDTO.new # FedExAccountInformationDTO | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.fed_ex_account_carrier_connect_account(model, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->fed_ex_account_carrier_connect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**FedExAccountInformationDTO**](FedExAccountInformationDTO.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**ConnectAccountResponseDTO**](ConnectAccountResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **fed_ex_account_carrier_disconnect_account**
> fed_ex_account_carrier_disconnect_account(carrier_id, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.fed_ex_account_carrier_disconnect_account(carrier_id, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->fed_ex_account_carrier_disconnect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **fed_ex_account_carrier_update_settings**
> fed_ex_account_carrier_update_settings(carrier_id, settings, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 

settings = ShipEngineApi::FedExAccountSettingsDTO.new # FedExAccountSettingsDTO | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.fed_ex_account_carrier_update_settings(carrier_id, settings, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->fed_ex_account_carrier_update_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 
 **settings** | [**FedExAccountSettingsDTO**](FedExAccountSettingsDTO.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **first_mile_account_carrier_connect_account**
> ConnectAccountResponseDTO first_mile_account_carrier_connect_account(model, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

model = ShipEngineApi::FirstMileAccountInformationDTO.new # FirstMileAccountInformationDTO | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.first_mile_account_carrier_connect_account(model, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->first_mile_account_carrier_connect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**FirstMileAccountInformationDTO**](FirstMileAccountInformationDTO.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**ConnectAccountResponseDTO**](ConnectAccountResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **first_mile_account_carrier_disconnect_account**
> first_mile_account_carrier_disconnect_account(carrier_id, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.first_mile_account_carrier_disconnect_account(carrier_id, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->first_mile_account_carrier_disconnect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **globegistics_account_carrier_connect_account**
> ConnectAccountResponseDTO globegistics_account_carrier_connect_account(model, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

model = ShipEngineApi::GlobegisticsAccountInformationDTO.new # GlobegisticsAccountInformationDTO | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.globegistics_account_carrier_connect_account(model, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->globegistics_account_carrier_connect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**GlobegisticsAccountInformationDTO**](GlobegisticsAccountInformationDTO.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**ConnectAccountResponseDTO**](ConnectAccountResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **globegistics_account_carrier_disconnect_account**
> globegistics_account_carrier_disconnect_account(carrier_id, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.globegistics_account_carrier_disconnect_account(carrier_id, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->globegistics_account_carrier_disconnect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **imex_account_carrier_connect_account**
> ConnectAccountResponseDTO imex_account_carrier_connect_account(model, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

model = ShipEngineApi::ImexAccountInformationDTO.new # ImexAccountInformationDTO | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.imex_account_carrier_connect_account(model, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->imex_account_carrier_connect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**ImexAccountInformationDTO**](ImexAccountInformationDTO.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**ConnectAccountResponseDTO**](ConnectAccountResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **imex_account_carrier_disconnect_account**
> imex_account_carrier_disconnect_account(carrier_id, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.imex_account_carrier_disconnect_account(carrier_id, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->imex_account_carrier_disconnect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **newgistics_account_carrier_connect_account**
> ConnectAccountResponseDTO newgistics_account_carrier_connect_account(model, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

model = ShipEngineApi::NewgisticsAccountInformationDTO.new # NewgisticsAccountInformationDTO | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.newgistics_account_carrier_connect_account(model, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->newgistics_account_carrier_connect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**NewgisticsAccountInformationDTO**](NewgisticsAccountInformationDTO.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**ConnectAccountResponseDTO**](ConnectAccountResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **newgistics_account_carrier_disconnect_account**
> newgistics_account_carrier_disconnect_account(carrier_id, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.newgistics_account_carrier_disconnect_account(carrier_id, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->newgistics_account_carrier_disconnect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **newgistics_account_carrier_update_settings**
> newgistics_account_carrier_update_settings(carrier_id, settings, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 

settings = ShipEngineApi::NewgisticsAccountSettingsDTO.new # NewgisticsAccountSettingsDTO | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.newgistics_account_carrier_update_settings(carrier_id, settings, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->newgistics_account_carrier_update_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 
 **settings** | [**NewgisticsAccountSettingsDTO**](NewgisticsAccountSettingsDTO.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **on_trac_account_carrier_connect_account**
> ConnectAccountResponseDTO on_trac_account_carrier_connect_account(model, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

model = ShipEngineApi::OnTracAccountInformationDTO.new # OnTracAccountInformationDTO | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.on_trac_account_carrier_connect_account(model, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->on_trac_account_carrier_connect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**OnTracAccountInformationDTO**](OnTracAccountInformationDTO.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**ConnectAccountResponseDTO**](ConnectAccountResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **on_trac_account_carrier_disconnect_account**
> on_trac_account_carrier_disconnect_account(carrier_id, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.on_trac_account_carrier_disconnect_account(carrier_id, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->on_trac_account_carrier_disconnect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **rr_donnelley_account_carrier_connect_account**
> ConnectAccountResponseDTO rr_donnelley_account_carrier_connect_account(model, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

model = ShipEngineApi::RrDonnelleyAccountInformationDTO.new # RrDonnelleyAccountInformationDTO | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.rr_donnelley_account_carrier_connect_account(model, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->rr_donnelley_account_carrier_connect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**RrDonnelleyAccountInformationDTO**](RrDonnelleyAccountInformationDTO.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**ConnectAccountResponseDTO**](ConnectAccountResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **rr_donnelley_account_carrier_disconnect_account**
> rr_donnelley_account_carrier_disconnect_account(carrier_id, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.rr_donnelley_account_carrier_disconnect_account(carrier_id, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->rr_donnelley_account_carrier_disconnect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **stamps_account_carrier_connect_account**
> ConnectAccountResponseDTO stamps_account_carrier_connect_account(model, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

model = ShipEngineApi::StampsAccountInformationDTO.new # StampsAccountInformationDTO | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.stamps_account_carrier_connect_account(model, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->stamps_account_carrier_connect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**StampsAccountInformationDTO**](StampsAccountInformationDTO.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**ConnectAccountResponseDTO**](ConnectAccountResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **stamps_account_carrier_disconnect_account**
> stamps_account_carrier_disconnect_account(carrier_id, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.stamps_account_carrier_disconnect_account(carrier_id, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->stamps_account_carrier_disconnect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **u_ps_account_carrier_connect_account**
> ConnectAccountResponseDTO u_ps_account_carrier_connect_account(model, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

model = ShipEngineApi::UPSAccountInformationDTO.new # UPSAccountInformationDTO | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.u_ps_account_carrier_connect_account(model, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->u_ps_account_carrier_connect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**UPSAccountInformationDTO**](UPSAccountInformationDTO.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**ConnectAccountResponseDTO**](ConnectAccountResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **u_ps_account_carrier_disconnect_account**
> u_ps_account_carrier_disconnect_account(carrier_id, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.u_ps_account_carrier_disconnect_account(carrier_id, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->u_ps_account_carrier_disconnect_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **u_ps_account_carrier_update_settings**
> u_ps_account_carrier_update_settings(carrier_id, settings, api_key)



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

api_instance = ShipEngineApi::CarrierAccountsApi.new

carrier_id = "carrier_id_example" # String | 

settings = ShipEngineApi::UPSAccountSettingsDTO.new # UPSAccountSettingsDTO | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  api_instance.u_ps_account_carrier_update_settings(carrier_id, settings, api_key)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarrierAccountsApi->u_ps_account_carrier_update_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 
 **settings** | [**UPSAccountSettingsDTO**](UPSAccountSettingsDTO.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



