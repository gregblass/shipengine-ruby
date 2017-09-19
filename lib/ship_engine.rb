=begin
#ShipEngine

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

# Common files
require 'ship_engine/api_client'
require 'ship_engine/api_error'
require 'ship_engine/version'
require 'ship_engine/configuration'

# Models
require 'ship_engine/models/access_worldwide_account_information_dto'
require 'ship_engine/models/address_dto'
require 'ship_engine/models/address_validating_shipment'
require 'ship_engine/models/address_validation_response_dto'
require 'ship_engine/models/apc_account_information_dto'
require 'ship_engine/models/api_error_dto'
require 'ship_engine/models/api_error_response_dto'
require 'ship_engine/models/asendia_account_information_dto'
require 'ship_engine/models/batch'
require 'ship_engine/models/batch_response_error'
require 'ship_engine/models/batch_response_errors'
require 'ship_engine/models/carrier'
require 'ship_engine/models/carrier_advanced_option'
require 'ship_engine/models/carrier_list_options_response'
require 'ship_engine/models/carrier_list_packages_response'
require 'ship_engine/models/carrier_list_response'
require 'ship_engine/models/carrier_list_services_response'
require 'ship_engine/models/connect_account_response_dto'
require 'ship_engine/models/create_batch_request'
require 'ship_engine/models/create_manifest_request'
require 'ship_engine/models/create_shipment_response'
require 'ship_engine/models/create_shipments_request'
require 'ship_engine/models/create_shipments_response'
require 'ship_engine/models/customs_item'
require 'ship_engine/models/dhl_express_account_information_dto'
require 'ship_engine/models/dhl_express_account_settings_dto'
require 'ship_engine/models/dimensions'
require 'ship_engine/models/endicia_account_information_dto'
require 'ship_engine/models/fedex_account_information_dto'
require 'ship_engine/models/fedex_account_settings_dto'
require 'ship_engine/models/first_mile_account_information_dto'
require 'ship_engine/models/globegistics_account_information_dto'
require 'ship_engine/models/imex_account_information_dto'
require 'ship_engine/models/international_options'
require 'ship_engine/models/label'
require 'ship_engine/models/link_dto'
require 'ship_engine/models/list_batch_response'
require 'ship_engine/models/list_label_response'
require 'ship_engine/models/list_shipment_response'
require 'ship_engine/models/list_tag_response'
require 'ship_engine/models/manifest'
require 'ship_engine/models/manifests_list_response'
require 'ship_engine/models/modify_batch_request'
require 'ship_engine/models/money_dto'
require 'ship_engine/models/on_trac_account_information_dto'
require 'ship_engine/models/package'
require 'ship_engine/models/packages_list_response'
require 'ship_engine/models/pagination_link_dto'
require 'ship_engine/models/process_batch_request'
require 'ship_engine/models/provider_error'
require 'ship_engine/models/purchase_label_request'
require 'ship_engine/models/purchase_label_without_shipment_request'
require 'ship_engine/models/rate'
require 'ship_engine/models/rate_estimate_request'
require 'ship_engine/models/rate_request'
require 'ship_engine/models/rate_response'
require 'ship_engine/models/rate_shipment_request'
require 'ship_engine/models/rate_shipments_request'
require 'ship_engine/models/response_message_dto'
require 'ship_engine/models/rr_donnelley_account_information_dto'
require 'ship_engine/models/service'
require 'ship_engine/models/shipment'
require 'ship_engine/models/shipment_add_tag_response'
require 'ship_engine/models/shipment_package'
require 'ship_engine/models/shipment_response_error'
require 'ship_engine/models/shipment_response_errors'
require 'ship_engine/models/stamps_account_information_dto'
require 'ship_engine/models/tag_response'
require 'ship_engine/models/track_event'
require 'ship_engine/models/tracking_information'
require 'ship_engine/models/ups_account_information_dto'
require 'ship_engine/models/ups_account_settings_dto'
require 'ship_engine/models/ups_invoice_dto'
require 'ship_engine/models/void_label_response'
require 'ship_engine/models/warehouse_dto'
require 'ship_engine/models/warehouse_list_dto'
require 'ship_engine/models/warehouse_request'
require 'ship_engine/models/weight'

# APIs
require 'ship_engine/api/address_validation_api'
require 'ship_engine/api/batches_api'
require 'ship_engine/api/carrier_accounts_api'
require 'ship_engine/api/carriers_api'
require 'ship_engine/api/environment_api'
require 'ship_engine/api/insurance_api'
require 'ship_engine/api/labels_api'
require 'ship_engine/api/manifests_api'
require 'ship_engine/api/packages_api'
require 'ship_engine/api/rates_api'
require 'ship_engine/api/shipments_api'
require 'ship_engine/api/tags_api'
require 'ship_engine/api/tracking_api'
require 'ship_engine/api/warehouses_api'

module ShipEngine
  class << self
    # Customize default settings for the SDK using block.
    #   ShipEngine.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
