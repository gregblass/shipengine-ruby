# ShipEngineApi::Label

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label_id** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**shipment_id** | **String** |  | [optional] 
**ship_date** | **DateTime** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**shipment_cost** | [**MoneyDTO**](MoneyDTO.md) |  | [optional] 
**insurance_cost** | [**MoneyDTO**](MoneyDTO.md) |  | [optional] 
**tracking_number** | **String** |  | [optional] 
**is_return_label** | **BOOLEAN** |  | [optional] 
**is_international** | **BOOLEAN** |  | [optional] 
**batch_id** | **String** |  | [optional] 
**carrier_id** | **String** |  | [optional] 
**service_code** | **String** |  | [optional] 
**package_code** | **String** |  | [optional] 
**voided** | **BOOLEAN** |  | [optional] 
**voided_at** | **DateTime** |  | [optional] 
**label_format** | **String** |  | [optional] 
**label_layout** | **String** |  | [optional] 
**trackable** | **BOOLEAN** |  | [optional] 
**carrier_code** | **String** |  | [optional] 
**tracking_status** | **String** |  | [optional] 
**label_download** | [**LinkDTO**](LinkDTO.md) |  | [optional] 
**form_download** | [**LinkDTO**](LinkDTO.md) |  | [optional] 
**insurance_claim** | [**LinkDTO**](LinkDTO.md) |  | [optional] 
**packages** | [**Array&lt;LabelPackage&gt;**](LabelPackage.md) |  | [optional] 


