# ShipEngineApi::AddressValidationApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**address_validation_validate_addresses**](AddressValidationApi.md#address_validation_validate_addresses) | **POST** /v1/addresses/validate | 


# **address_validation_validate_addresses**
> Array&lt;AddressValidationResponseDTO&gt; address_validation_validate_addresses(addresses, api_key)



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

api_instance = ShipEngineApi::AddressValidationApi.new

addresses = [ShipEngineApi::AddressDTO.new] # Array<AddressDTO> | 

api_key = "jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY" # String | API Key


begin
  result = api_instance.address_validation_validate_addresses(addresses, api_key)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling AddressValidationApi->address_validation_validate_addresses: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addresses** | [**Array&lt;AddressDTO&gt;**](AddressDTO.md)|  | 
 **api_key** | **String**| API Key | [default to jHpriMLAiP0f8PszTUn37t4D3+q2lW/G+eaMgGAupBY]

### Return type

[**Array&lt;AddressValidationResponseDTO&gt;**](AddressValidationResponseDTO.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json



