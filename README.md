# ShipEngine - the Ruby library for the ShipEngine™

ShipEngine - the Ruby gem for the ShipEngine

This library is currently in __beta__

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build ship_engine.gemspec
```

Then either install the gem locally:

```shell
gem install ./ship_engine-1.0.0.gem
```
(for development, run `gem install --dev ./ship_engine-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'ship_engine', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'ship_engine', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'ship_engine'

# Setup authorization
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

## Documentation for API Endpoints

All URIs are relative to *https://api.shipengine.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ShipEngine::AddressValidationApi* | [**validate_addresses**](docs/AddressValidationApi.md#validate_addresses) | **POST** /v1/addresses/validate | 
*ShipEngine::BatchesApi* | [**add_to_batch**](docs/BatchesApi.md#add_to_batch) | **POST** /v1/batches/{batch_id}/add | 
*ShipEngine::BatchesApi* | [**create**](docs/BatchesApi.md#create) | **POST** /v1/batches | 
*ShipEngine::BatchesApi* | [**get**](docs/BatchesApi.md#get) | **GET** /v1/batches/{batch_id} | 
*ShipEngine::BatchesApi* | [**get_by_external_id**](docs/BatchesApi.md#get_by_external_id) | **GET** /v1/batches/external_batch_id/{external_batch_id} | 
*ShipEngine::BatchesApi* | [**list**](docs/BatchesApi.md#list) | **GET** /v1/batches | 
*ShipEngine::BatchesApi* | [**list_errors**](docs/BatchesApi.md#list_errors) | **GET** /v1/batches/{batch_id}/errors | 
*ShipEngine::BatchesApi* | [**process**](docs/BatchesApi.md#process) | **POST** /v1/batches/{batch_id}/process/labels | 
*ShipEngine::BatchesApi* | [**remove_from_batch**](docs/BatchesApi.md#remove_from_batch) | **POST** /v1/batches/{batch_id}/remove | 
*ShipEngine::CarrierAccountsApi* | [**access_worldwide_connect_account**](docs/CarrierAccountsApi.md#access_worldwide_connect_account) | **POST** /v1/connections/carriers/access_worldwide | 
*ShipEngine::CarrierAccountsApi* | [**access_worldwide_disconnect_account**](docs/CarrierAccountsApi.md#access_worldwide_disconnect_account) | **DELETE** /v1/connections/carriers/access_worldwide/{carrier_id} | 
*ShipEngine::CarrierAccountsApi* | [**apc_connect_account**](docs/CarrierAccountsApi.md#apc_connect_account) | **POST** /v1/connections/carriers/apc | 
*ShipEngine::CarrierAccountsApi* | [**apc_disconnect_account**](docs/CarrierAccountsApi.md#apc_disconnect_account) | **DELETE** /v1/connections/carriers/apc/{carrier_id} | 
*ShipEngine::CarrierAccountsApi* | [**asendia_connect_account**](docs/CarrierAccountsApi.md#asendia_connect_account) | **POST** /v1/connections/carriers/asendia | 
*ShipEngine::CarrierAccountsApi* | [**asendia_disconnect_account**](docs/CarrierAccountsApi.md#asendia_disconnect_account) | **DELETE** /v1/connections/carriers/asendia/{carrier_id} | 
*ShipEngine::CarrierAccountsApi* | [**dhl_express_connect_account**](docs/CarrierAccountsApi.md#dhl_express_connect_account) | **POST** /v1/connections/carriers/dhl_express | 
*ShipEngine::CarrierAccountsApi* | [**dhl_express_disconnect_account**](docs/CarrierAccountsApi.md#dhl_express_disconnect_account) | **DELETE** /v1/connections/carriers/dhl_express/{carrier_id} | 
*ShipEngine::CarrierAccountsApi* | [**dhl_express_update_settings**](docs/CarrierAccountsApi.md#dhl_express_update_settings) | **PUT** /v1/connections/carriers/dhl_express/{carrier_id}/settings | 
*ShipEngine::CarrierAccountsApi* | [**endicia_connect_account**](docs/CarrierAccountsApi.md#endicia_connect_account) | **POST** /v1/connections/carriers/endicia | 
*ShipEngine::CarrierAccountsApi* | [**endicia_disconnect_account**](docs/CarrierAccountsApi.md#endicia_disconnect_account) | **DELETE** /v1/connections/carriers/endicia/{carrier_id} | 
*ShipEngine::CarrierAccountsApi* | [**fedex_connect_account**](docs/CarrierAccountsApi.md#fedex_connect_account) | **POST** /v1/connections/carriers/fedex | 
*ShipEngine::CarrierAccountsApi* | [**fedex_disconnect_account**](docs/CarrierAccountsApi.md#fedex_disconnect_account) | **DELETE** /v1/connections/carriers/fedex/{carrier_id} | 
*ShipEngine::CarrierAccountsApi* | [**fedex_update_settings**](docs/CarrierAccountsApi.md#fedex_update_settings) | **PUT** /v1/connections/carriers/fedex/{carrier_id}/settings | 
*ShipEngine::CarrierAccountsApi* | [**first_mile_connect_account**](docs/CarrierAccountsApi.md#first_mile_connect_account) | **POST** /v1/connections/carriers/firstmile | 
*ShipEngine::CarrierAccountsApi* | [**first_mile_disconnect_account**](docs/CarrierAccountsApi.md#first_mile_disconnect_account) | **DELETE** /v1/connections/carriers/firstmile/{carrier_id} | 
*ShipEngine::CarrierAccountsApi* | [**globegistics_connect_account**](docs/CarrierAccountsApi.md#globegistics_connect_account) | **POST** /v1/connections/carriers/globegistics | 
*ShipEngine::CarrierAccountsApi* | [**globegistics_disconnect_account**](docs/CarrierAccountsApi.md#globegistics_disconnect_account) | **DELETE** /v1/connections/carriers/globegistics/{carrier_id} | 
*ShipEngine::CarrierAccountsApi* | [**imex_connect_account**](docs/CarrierAccountsApi.md#imex_connect_account) | **POST** /v1/connections/carriers/imex | 
*ShipEngine::CarrierAccountsApi* | [**imex_disconnect_account**](docs/CarrierAccountsApi.md#imex_disconnect_account) | **DELETE** /v1/connections/carriers/imex/{carrier_id} | 
*ShipEngine::CarrierAccountsApi* | [**on_trac_connect_account**](docs/CarrierAccountsApi.md#on_trac_connect_account) | **POST** /v1/connections/carriers/ontrac | 
*ShipEngine::CarrierAccountsApi* | [**on_trac_disconnect_account**](docs/CarrierAccountsApi.md#on_trac_disconnect_account) | **DELETE** /v1/connections/carriers/ontrac/{carrier_id} | 
*ShipEngine::CarrierAccountsApi* | [**rr_donnelley_connect_account**](docs/CarrierAccountsApi.md#rr_donnelley_connect_account) | **POST** /v1/connections/carriers/rr_donnelley | 
*ShipEngine::CarrierAccountsApi* | [**rr_donnelley_disconnect_account**](docs/CarrierAccountsApi.md#rr_donnelley_disconnect_account) | **DELETE** /v1/connections/carriers/rr_donnelley/{carrier_id} | 
*ShipEngine::CarrierAccountsApi* | [**stamps_connect_account**](docs/CarrierAccountsApi.md#stamps_connect_account) | **POST** /v1/connections/carriers/stamps_com | 
*ShipEngine::CarrierAccountsApi* | [**stamps_disconnect_account**](docs/CarrierAccountsApi.md#stamps_disconnect_account) | **DELETE** /v1/connections/carriers/stamps_com/{carrier_id} | 
*ShipEngine::CarrierAccountsApi* | [**ups_connect_account**](docs/CarrierAccountsApi.md#ups_connect_account) | **POST** /v1/connections/carriers/ups | 
*ShipEngine::CarrierAccountsApi* | [**ups_disconnect_account**](docs/CarrierAccountsApi.md#ups_disconnect_account) | **DELETE** /v1/connections/carriers/ups/{carrier_id} | 
*ShipEngine::CarrierAccountsApi* | [**ups_update_settings**](docs/CarrierAccountsApi.md#ups_update_settings) | **PUT** /v1/connections/carriers/ups/{carrier_id}/settings | 
*ShipEngine::CarriersApi* | [**get**](docs/CarriersApi.md#get) | **GET** /v1/carriers/{carrier_id} | 
*ShipEngine::CarriersApi* | [**get_options**](docs/CarriersApi.md#get_options) | **GET** /v1/carriers/{carrier_id}/options | 
*ShipEngine::CarriersApi* | [**list**](docs/CarriersApi.md#list) | **GET** /v1/carriers | 
*ShipEngine::CarriersApi* | [**list_packages**](docs/CarriersApi.md#list_packages) | **GET** /v1/carriers/{carrier_id}/packages | 
*ShipEngine::CarriersApi* | [**list_services**](docs/CarriersApi.md#list_services) | **GET** /v1/carriers/{carrier_id}/services | 
*ShipEngine::EnvironmentApi* | [**webhooks**](docs/EnvironmentApi.md#webhooks) | **GET** /v1/environment/webhooks | 
*ShipEngine::EnvironmentApi* | [**whoami**](docs/EnvironmentApi.md#whoami) | **GET** /v1/environment/whoami | 
*ShipEngine::InsuranceApi* | [**add_funds**](docs/InsuranceApi.md#add_funds) | **PATCH** /v1/insurance/shipsurance/add_funds | 
*ShipEngine::InsuranceApi* | [**get_balance**](docs/InsuranceApi.md#get_balance) | **GET** /v1/insurance/shipsurance/balance | 
*ShipEngine::LabelsApi* | [**get**](docs/LabelsApi.md#get) | **GET** /v1/labels/{label_id} | 
*ShipEngine::LabelsApi* | [**list**](docs/LabelsApi.md#list) | **GET** /v1/labels | 
*ShipEngine::LabelsApi* | [**purchase_label**](docs/LabelsApi.md#purchase_label) | **POST** /v1/labels | 
*ShipEngine::LabelsApi* | [**purchase_label_with_rate**](docs/LabelsApi.md#purchase_label_with_rate) | **POST** /v1/labels/rates/{rate_id} | 
*ShipEngine::LabelsApi* | [**purchase_label_with_shipment**](docs/LabelsApi.md#purchase_label_with_shipment) | **POST** /v1/labels/shipment/{shipment_id} | 
*ShipEngine::LabelsApi* | [**track**](docs/LabelsApi.md#track) | **GET** /v1/labels/{label_id}/track | 
*ShipEngine::LabelsApi* | [**void_label**](docs/LabelsApi.md#void_label) | **PUT** /v1/labels/{label_id}/void | 
*ShipEngine::ManifestsApi* | [**create**](docs/ManifestsApi.md#create) | **POST** /v1/manifests | 
*ShipEngine::ManifestsApi* | [**get**](docs/ManifestsApi.md#get) | **GET** /v1/manifests/{manifest_id} | 
*ShipEngine::ManifestsApi* | [**list**](docs/ManifestsApi.md#list) | **GET** /v1/manifests | 
*ShipEngine::PackagesApi* | [**create**](docs/PackagesApi.md#create) | **POST** /v1/packages | 
*ShipEngine::PackagesApi* | [**delete**](docs/PackagesApi.md#delete) | **DELETE** /v1/packages/{package_id} | 
*ShipEngine::PackagesApi* | [**get**](docs/PackagesApi.md#get) | **GET** /v1/packages/{package_id} | 
*ShipEngine::PackagesApi* | [**list**](docs/PackagesApi.md#list) | **GET** /v1/packages | 
*ShipEngine::PackagesApi* | [**update**](docs/PackagesApi.md#update) | **PUT** /v1/packages/{package_id} | 
*ShipEngine::RatesApi* | [**estimate**](docs/RatesApi.md#estimate) | **POST** /v1/rates/estimate | 
*ShipEngine::RatesApi* | [**get**](docs/RatesApi.md#get) | **GET** /v1/rates/{rate_id} | 
*ShipEngine::RatesApi* | [**rate_shipment**](docs/RatesApi.md#rate_shipment) | **POST** /v1/rates | 
*ShipEngine::RatesApi* | [**rate_shipments_async**](docs/RatesApi.md#rate_shipments_async) | **POST** /v1/rates/bulk | 
*ShipEngine::ShipmentsApi* | [**add_tag**](docs/ShipmentsApi.md#add_tag) | **POST** /v1/shipments/{shipment_id}/tags/{tag} | 
*ShipEngine::ShipmentsApi* | [**cancel**](docs/ShipmentsApi.md#cancel) | **PUT** /v1/shipments/{shipment_id}/cancel | 
*ShipEngine::ShipmentsApi* | [**create**](docs/ShipmentsApi.md#create) | **POST** /v1/shipments | 
*ShipEngine::ShipmentsApi* | [**get**](docs/ShipmentsApi.md#get) | **GET** /v1/shipments/{shipment_id} | 
*ShipEngine::ShipmentsApi* | [**get_by_external_id**](docs/ShipmentsApi.md#get_by_external_id) | **GET** /v1/shipments/external_shipment_id/{external_shipment_id} | 
*ShipEngine::ShipmentsApi* | [**get_rates_for_shipment**](docs/ShipmentsApi.md#get_rates_for_shipment) | **GET** /v1/shipments/{shipment_id}/rates | 
*ShipEngine::ShipmentsApi* | [**list**](docs/ShipmentsApi.md#list) | **GET** /v1/shipments | 
*ShipEngine::ShipmentsApi* | [**list_errors**](docs/ShipmentsApi.md#list_errors) | **GET** /v1/shipments/{shipment_id}/errors | 
*ShipEngine::ShipmentsApi* | [**remove_tag**](docs/ShipmentsApi.md#remove_tag) | **DELETE** /v1/shipments/{shipment_id}/tags/{tag} | 
*ShipEngine::ShipmentsApi* | [**update**](docs/ShipmentsApi.md#update) | **PUT** /v1/shipments/{shipment_id} | 
*ShipEngine::TagsApi* | [**add_tag**](docs/TagsApi.md#add_tag) | **POST** /v1/tags/{tag_name} | 
*ShipEngine::TagsApi* | [**delete**](docs/TagsApi.md#delete) | **DELETE** /v1/tags/{tag_name} | 
*ShipEngine::TagsApi* | [**list**](docs/TagsApi.md#list) | **GET** /v1/tags | 
*ShipEngine::TagsApi* | [**update**](docs/TagsApi.md#update) | **PUT** /v1/tags/{tag_name}/{new_name} | 
*ShipEngine::TrackingApi* | [**start_tracking**](docs/TrackingApi.md#start_tracking) | **POST** /v1/tracking/start | 
*ShipEngine::TrackingApi* | [**stop_tracking**](docs/TrackingApi.md#stop_tracking) | **POST** /v1/tracking/stop | 
*ShipEngine::TrackingApi* | [**track**](docs/TrackingApi.md#track) | **GET** /v1/tracking | 
*ShipEngine::WarehousesApi* | [**create**](docs/WarehousesApi.md#create) | **POST** /v1/warehouses | 
*ShipEngine::WarehousesApi* | [**delete**](docs/WarehousesApi.md#delete) | **DELETE** /v1/warehouses/{warehouse_id} | 
*ShipEngine::WarehousesApi* | [**get**](docs/WarehousesApi.md#get) | **GET** /v1/warehouses/{warehouse_id} | 
*ShipEngine::WarehousesApi* | [**list**](docs/WarehousesApi.md#list) | **GET** /v1/warehouses | 
*ShipEngine::WarehousesApi* | [**update**](docs/WarehousesApi.md#update) | **PUT** /v1/warehouses/{warehouse_id} | 


## Documentation for Models

 - [ShipEngine::AccessWorldwideAccountInformationDTO](docs/AccessWorldwideAccountInformationDTO.md)
 - [ShipEngine::AddressDTO](docs/AddressDTO.md)
 - [ShipEngine::AddressValidatingShipment](docs/AddressValidatingShipment.md)
 - [ShipEngine::AddressValidationResponseDTO](docs/AddressValidationResponseDTO.md)
 - [ShipEngine::ApcAccountInformationDTO](docs/ApcAccountInformationDTO.md)
 - [ShipEngine::ApiErrorDTO](docs/ApiErrorDTO.md)
 - [ShipEngine::ApiErrorResponseDTO](docs/ApiErrorResponseDTO.md)
 - [ShipEngine::AsendiaAccountInformationDTO](docs/AsendiaAccountInformationDTO.md)
 - [ShipEngine::Batch](docs/Batch.md)
 - [ShipEngine::BatchResponseError](docs/BatchResponseError.md)
 - [ShipEngine::BatchResponseErrors](docs/BatchResponseErrors.md)
 - [ShipEngine::Carrier](docs/Carrier.md)
 - [ShipEngine::CarrierAdvancedOption](docs/CarrierAdvancedOption.md)
 - [ShipEngine::CarrierListOptionsResponse](docs/CarrierListOptionsResponse.md)
 - [ShipEngine::CarrierListPackagesResponse](docs/CarrierListPackagesResponse.md)
 - [ShipEngine::CarrierListResponse](docs/CarrierListResponse.md)
 - [ShipEngine::CarrierListServicesResponse](docs/CarrierListServicesResponse.md)
 - [ShipEngine::ConnectAccountResponseDTO](docs/ConnectAccountResponseDTO.md)
 - [ShipEngine::CreateBatchRequest](docs/CreateBatchRequest.md)
 - [ShipEngine::CreateManifestRequest](docs/CreateManifestRequest.md)
 - [ShipEngine::CreateShipmentResponse](docs/CreateShipmentResponse.md)
 - [ShipEngine::CreateShipmentsRequest](docs/CreateShipmentsRequest.md)
 - [ShipEngine::CreateShipmentsResponse](docs/CreateShipmentsResponse.md)
 - [ShipEngine::CustomsItem](docs/CustomsItem.md)
 - [ShipEngine::DHLExpressAccountInformationDTO](docs/DHLExpressAccountInformationDTO.md)
 - [ShipEngine::DHLExpressAccountSettingsDTO](docs/DHLExpressAccountSettingsDTO.md)
 - [ShipEngine::Dimensions](docs/Dimensions.md)
 - [ShipEngine::EndiciaAccountInformationDTO](docs/EndiciaAccountInformationDTO.md)
 - [ShipEngine::FedExAccountInformationDTO](docs/FedExAccountInformationDTO.md)
 - [ShipEngine::FedExAccountSettingsDTO](docs/FedExAccountSettingsDTO.md)
 - [ShipEngine::FirstMileAccountInformationDTO](docs/FirstMileAccountInformationDTO.md)
 - [ShipEngine::GlobegisticsAccountInformationDTO](docs/GlobegisticsAccountInformationDTO.md)
 - [ShipEngine::ImexAccountInformationDTO](docs/ImexAccountInformationDTO.md)
 - [ShipEngine::InternationalOptions](docs/InternationalOptions.md)
 - [ShipEngine::Label](docs/Label.md)
 - [ShipEngine::LinkDTO](docs/LinkDTO.md)
 - [ShipEngine::ListBatchResponse](docs/ListBatchResponse.md)
 - [ShipEngine::ListLabelResponse](docs/ListLabelResponse.md)
 - [ShipEngine::ListShipmentResponse](docs/ListShipmentResponse.md)
 - [ShipEngine::ListTagResponse](docs/ListTagResponse.md)
 - [ShipEngine::Manifest](docs/Manifest.md)
 - [ShipEngine::ManifestsListResponse](docs/ManifestsListResponse.md)
 - [ShipEngine::ModifyBatchRequest](docs/ModifyBatchRequest.md)
 - [ShipEngine::MoneyDTO](docs/MoneyDTO.md)
 - [ShipEngine::OnTracAccountInformationDTO](docs/OnTracAccountInformationDTO.md)
 - [ShipEngine::Package](docs/Package.md)
 - [ShipEngine::PackagesListResponse](docs/PackagesListResponse.md)
 - [ShipEngine::PaginationLinkDTO](docs/PaginationLinkDTO.md)
 - [ShipEngine::ProcessBatchRequest](docs/ProcessBatchRequest.md)
 - [ShipEngine::ProviderError](docs/ProviderError.md)
 - [ShipEngine::PurchaseLabelRequest](docs/PurchaseLabelRequest.md)
 - [ShipEngine::PurchaseLabelWithoutShipmentRequest](docs/PurchaseLabelWithoutShipmentRequest.md)
 - [ShipEngine::Rate](docs/Rate.md)
 - [ShipEngine::RateEstimateRequest](docs/RateEstimateRequest.md)
 - [ShipEngine::RateRequest](docs/RateRequest.md)
 - [ShipEngine::RateResponse](docs/RateResponse.md)
 - [ShipEngine::RateShipmentRequest](docs/RateShipmentRequest.md)
 - [ShipEngine::RateShipmentsRequest](docs/RateShipmentsRequest.md)
 - [ShipEngine::ResponseMessageDTO](docs/ResponseMessageDTO.md)
 - [ShipEngine::RrDonnelleyAccountInformationDTO](docs/RrDonnelleyAccountInformationDTO.md)
 - [ShipEngine::Service](docs/Service.md)
 - [ShipEngine::Shipment](docs/Shipment.md)
 - [ShipEngine::ShipmentAddTagResponse](docs/ShipmentAddTagResponse.md)
 - [ShipEngine::ShipmentPackage](docs/ShipmentPackage.md)
 - [ShipEngine::ShipmentResponseError](docs/ShipmentResponseError.md)
 - [ShipEngine::ShipmentResponseErrors](docs/ShipmentResponseErrors.md)
 - [ShipEngine::StampsAccountInformationDTO](docs/StampsAccountInformationDTO.md)
 - [ShipEngine::TagResponse](docs/TagResponse.md)
 - [ShipEngine::TrackEvent](docs/TrackEvent.md)
 - [ShipEngine::TrackingInformation](docs/TrackingInformation.md)
 - [ShipEngine::UPSAccountInformationDTO](docs/UPSAccountInformationDTO.md)
 - [ShipEngine::UPSAccountSettingsDTO](docs/UPSAccountSettingsDTO.md)
 - [ShipEngine::UPSInvoiceDTO](docs/UPSInvoiceDTO.md)
 - [ShipEngine::VoidLabelResponse](docs/VoidLabelResponse.md)
 - [ShipEngine::WarehouseDTO](docs/WarehouseDTO.md)
 - [ShipEngine::WarehouseListDTO](docs/WarehouseListDTO.md)
 - [ShipEngine::WarehouseRequest](docs/WarehouseRequest.md)
 - [ShipEngine::Weight](docs/Weight.md)


## Documentation for Authorization


### api-key

- **Type**: API key
- **API key parameter name**: api-key
- **Location**: HTTP header

