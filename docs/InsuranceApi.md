# ShipEngine::InsuranceApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_funds**](InsuranceApi.md#add_funds) | **PATCH** /v1/insurance/shipsurance/add_funds | 
[**get_balance**](InsuranceApi.md#get_balance) | **GET** /v1/insurance/shipsurance/balance | 


# **add_funds**
> MoneyDTO add_funds(cost)



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

api_instance = ShipEngine::InsuranceApi.new

cost = ShipEngine::MoneyDTO.new # MoneyDTO | 


begin
  result = api_instance.add_funds(cost)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling InsuranceApi->add_funds: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cost** | [**MoneyDTO**](MoneyDTO.md)|  | 

### Return type

[**MoneyDTO**](MoneyDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



# **get_balance**
> MoneyDTO get_balance



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

api_instance = ShipEngine::InsuranceApi.new

begin
  result = api_instance.get_balance
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling InsuranceApi->get_balance: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MoneyDTO**](MoneyDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



