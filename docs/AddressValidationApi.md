# ShipEngine::AddressValidationApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**validate_addresses**](AddressValidationApi.md#validate_addresses) | **POST** /v1/addresses/validate | 


# **validate_addresses**
> Array&lt;AddressValidationResponseDTO&gt; validate_addresses(addresses)



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

api_instance = ShipEngine::AddressValidationApi.new

addresses = [ShipEngine::AddressDTO.new] # Array<AddressDTO> | 


begin
  result = api_instance.validate_addresses(addresses)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling AddressValidationApi->validate_addresses: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addresses** | [**Array&lt;AddressDTO&gt;**](AddressDTO.md)|  | 

### Return type

[**Array&lt;AddressValidationResponseDTO&gt;**](AddressValidationResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



