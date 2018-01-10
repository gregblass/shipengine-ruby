# ShipEngineApi::InsuranceApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**insurance_add_funds**](InsuranceApi.md#insurance_add_funds) | **PATCH** /v1/insurance/shipsurance/add_funds | 
[**insurance_get_balance**](InsuranceApi.md#insurance_get_balance) | **GET** /v1/insurance/shipsurance/balance | 


# **insurance_add_funds**
> MoneyDTO insurance_add_funds(cost, api_key)



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

api_instance = ShipEngineApi::InsuranceApi.new

cost = ShipEngineApi::MoneyDTO.new # MoneyDTO | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.insurance_add_funds(cost, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling InsuranceApi->insurance_add_funds: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cost** | [**MoneyDTO**](MoneyDTO.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**MoneyDTO**](MoneyDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **insurance_get_balance**
> MoneyDTO insurance_get_balance(api_key)



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

api_instance = ShipEngineApi::InsuranceApi.new

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.insurance_get_balance(api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling InsuranceApi->insurance_get_balance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**MoneyDTO**](MoneyDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



