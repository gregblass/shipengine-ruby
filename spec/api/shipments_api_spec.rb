=begin
#ShipEngine API

#ShipEngine™ is the world's best multi-carrier shipping API, with more than 20 supported shipping carriers.  You can easily get and compare shipping rates, print labels, track your shipments, and validate addresses anywhere in the world.  ### Worldwide Major Carrier Support Access the top global carriers in minutes—instead of weeks. Simply [connect your existing carrier accounts](https://docs.shipengine.com/docs/setup-a-carrier) in the API dashboard, and then [begin creating labels](https://docs.shipengine.com/docs/use-a-specific-service).  ### Real-Time Tracking [Track packages](https://docs.shipengine.com/docs/track-a-package) across any of our 20+ supported carrier accounts and create tracking events to keep your customers up-to-date. Easily integrate real-time tracking information for shipments into your app, email, or SMS.  ### Get Rates Across Carriers Make sure you ship as cost-effectively as possible by [quickly comparing rates](https://docs.shipengine.com/docs/get-shipping-rates) using the ShipEngine Rates API. As long as you have the carrier connected to your account, you'll be able to see and compare different rates and services.  ### Global Address Validation No matter your shipping volume, failed deliveries and address change surcharges cut into your bottom line and damage perception with customers. Our address validation services ensure your packages make it to the right place the first time. [Learn how to leverage our address validation services here.](https://docs.shipengine.com/docs/address-validation)  ShipEngine supports address validation for over 180 countries, including the United States, Canada, Great Britain, Australia, Germany, France, Norway, Spain, Sweden, Israel, Italy, and more. 

OpenAPI spec version: 1.0.0
Contact: sales@shipengine.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for ShipEngineApi::ShipmentsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ShipmentsApi' do
  before do
    # run before each test
    @instance = ShipEngineApi::ShipmentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ShipmentsApi' do
    it 'should create an instance of ShipmentsApi' do
      expect(@instance).to be_instance_of(ShipEngineApi::ShipmentsApi)
    end
  end

  # unit tests for v1_shipments_by_shipment_id_get
  # shipments.get_by_id
  # 
  # @param shipment_id 
  # @param [Hash] opts the optional parameters
  # @return [Shipment]
  describe 'v1_shipments_by_shipment_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_shipments_by_shipment_id_put
  # shipments.update_shipment
  # 
  # @param shipment_id 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [CreateShipmentResponseBody]
  describe 'v1_shipments_by_shipment_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_shipments_cancel_by_shipment_id_put
  # shipments.cancel
  # 
  # @param shipment_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v1_shipments_cancel_by_shipment_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_shipments_errors_by_shipment_id_get
  # shipments.find_errors
  # 
  # @param shipment_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :pagesize 
  # @return [ShipmentErrorsResponseBody]
  describe 'v1_shipments_errors_by_shipment_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_shipments_external_shipment_id_by_external_shipment_id_get
  # shipments.get_by_external_id
  # 
  # @param external_shipment_id 
  # @param [Hash] opts the optional parameters
  # @return [Shipment]
  describe 'v1_shipments_external_shipment_id_by_external_shipment_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_shipments_get
  # shipments.find
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :batch_id 
  # @option opts [String] :tag 
  # @option opts [String] :shipment_status 
  # @option opts [DateTime] :modified_at_start 
  # @option opts [DateTime] :modified_at_end 
  # @option opts [DateTime] :created_at_start 
  # @option opts [DateTime] :created_at_end 
  # @option opts [Integer] :page 
  # @option opts [Integer] :page_size 
  # @option opts [String] :sort_dir 
  # @option opts [String] :sort_by 
  # @return [ListShipmentResponseBody]
  describe 'v1_shipments_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_shipments_post
  # shipments.create_shipments
  # 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [CreateShipmentsResponseBody]
  describe 'v1_shipments_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_shipments_rates_by_shipment_id_get
  # shipments.get_rates_for_shipment
  # 
  # @param shipment_id 
  # @param [Hash] opts the optional parameters
  # @option opts [DateTime] :created_at_start 
  # @return [RateResponseBody]
  describe 'v1_shipments_rates_by_shipment_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_shipments_tags_by_shipment_id_and_tag_delete
  # shipments.remove_tag
  # 
  # @param shipment_id 
  # @param tag 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v1_shipments_tags_by_shipment_id_and_tag_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_shipments_tags_by_shipment_id_and_tag_post
  # shipments.add_tag
  # 
  # @param shipment_id 
  # @param tag 
  # @param [Hash] opts the optional parameters
  # @return [ShipmentAddTagResponseBody]
  describe 'v1_shipments_tags_by_shipment_id_and_tag_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
