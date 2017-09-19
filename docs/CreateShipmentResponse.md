# ShipEngine::CreateShipmentResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | **Array&lt;String&gt;** |  | [optional] 
**address_validation** | [**AddressValidationResponseDTO**](AddressValidationResponseDTO.md) |  | [optional] 
**shipment_id** | **String** |  | [optional] 
**carrier_id** | **String** |  | [optional] 
**service_code** | **String** |  | [optional] 
**external_shipment_id** | **String** |  | [optional] 
**ship_date** | **DateTime** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**modified_at** | **DateTime** |  | [optional] 
**shipment_status** | **String** |  | [optional] 
**ship_to** | [**AddressDTO**](AddressDTO.md) |  | [optional] 
**ship_from** | [**AddressDTO**](AddressDTO.md) |  | [optional] 
**warehouse_id** | **String** |  | [optional] 
**return_to** | [**AddressDTO**](AddressDTO.md) |  | [optional] 
**confirmation** | **String** |  | [optional] 
**customs** | [**InternationalOptions**](InternationalOptions.md) |  | [optional] 
**advanced_options** | **Hash&lt;String, Object&gt;** |  | [optional] 
**insurance_provider** | **String** |  | [optional] 
**tags** | [**Array&lt;TagResponse&gt;**](TagResponse.md) |  | [optional] 
**total_weight** | [**Weight**](Weight.md) |  | [optional] 
**packages** | [**Array&lt;ShipmentPackage&gt;**](ShipmentPackage.md) |  | [optional] 


