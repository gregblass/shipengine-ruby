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

# Unit tests for ShipEngineApi::LabelsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'LabelsApi' do
  before do
    # run before each test
    @instance = ShipEngineApi::LabelsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LabelsApi' do
    it 'should create an instance of LabelsApi' do
      expect(@instance).to be_instance_of(ShipEngineApi::LabelsApi)
    end
  end

  # unit tests for v1_labels_by_label_id_get
  # labels.get_by_id
  # 
  # @param label_id 
  # @param [Hash] opts the optional parameters
  # @return [Label]
  describe 'v1_labels_by_label_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_labels_get
  # Searchforshippinglabelsyou&#39;vecreated
  # This endpoint returns a list of labels that you&#39;ve [created](https://docs.shipengine.com/docs/quickstart-create-a-label). You can optionally filter the results as well as control their sort order and the number of results returned at a time.  By default, all labels are returned, 25 at a time, starting with the most recently created ones.  You can combine multiple filter options to narrow-down the results.  For example, if you only want to get your UPS labels for your east coast warehouse you could query by both &#x60;warehouse_id&#x60; and &#x60;carrier_id&#x60;  &gt; ###### Warning &gt; Test labels (those created with &#x60;test_label: true&#x60;) are not included in the results.  If you&#39;ve only ever created test labels, then the results will be empty. 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :label_status Only return labels that are currently in the specified status
  # @option opts [String] :carrier_id Only return labels for a specific [carrier account](https://docs.shipengine.com/docs/setup-a-carrier)
  # @option opts [String] :service_code Only return labels for a specific [carrier service](https://docs.shipengine.com/docs/use-a-specific-service)
  # @option opts [String] :tracking_number Only return labels with a specific tracking number
  # @option opts [String] :batch_id Only return labels that were created in a specific [batch](https://docs.shipengine.com/docs/using-batches)
  # @option opts [String] :warehouse_id Only return labels that originate from a specific [warehouse](https://docs.shipengine.com/docs/ship-from-a-warehouse)
  # @option opts [DateTime] :created_at_start Only return labels that were created on or after a specific date/time
  # @option opts [DateTime] :created_at_end Only return labels that were created on or before a specific date/time
  # @option opts [Integer] :page Return a specific \&quot;page\&quot; of results. Defaults to the first page. If set to a number that&#39;s greater than the number of pages of results, an empty page will be returned.
  # @option opts [Integer] :page_size The number of labels to return per response.  Defaults to 25.
  # @option opts [String] :sort_dir Controls the sort order of the query. Defaults to &#x60;desc&#x60;.
  # @option opts [String] :sort_by Controls which property the query is sorted by. Defaults to &#x60;created_at&#x60;.
  # @return [V1LabelsResponse]
  describe 'v1_labels_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_labels_rates_by_rate_id_post
  # labels.purchase_label_with_rate
  # 
  # @param rate_id 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [Label]
  describe 'v1_labels_rates_by_rate_id_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_labels_shipment_by_shipment_id_post
  # labels.purchase_label_with_shipment
  # 
  # @param shipment_id 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [Label]
  describe 'v1_labels_shipment_by_shipment_id_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_labels_track_by_label_id_get
  # labels.track
  # 
  # @param label_id 
  # @param [Hash] opts the optional parameters
  # @return [TrackingInformationResponseBody]
  describe 'v1_labels_track_by_label_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_labels_void_by_label_id_put
  # labels.void_label
  # 
  # @param label_id 
  # @param [Hash] opts the optional parameters
  # @return [VoidLabelResponseBody]
  describe 'v1_labels_void_by_label_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
