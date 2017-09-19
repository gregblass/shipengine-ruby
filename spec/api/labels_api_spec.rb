require 'spec_helper'
require 'json'
require 'vcr'

VCR.configure do |config|
  config.cassette_library_dir = "spec/vcr_cassettes"
  config.hook_into :webmock
end

# Unit tests for ShipEngine::LabelsApi
describe 'LabelsApi' do
  include_examples 'labels'
  include_examples 'list'
  include_examples 'purchase_label'
  include_examples 'shipments'

  before do
    initialize_api
    @instance = ShipEngine::LabelsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LabelsApi' do
    it 'should create an instance of LabelsApi' do
      expect(@instance).to be_instance_of(ShipEngine::LabelsApi)
    end
  end

  # unit tests for get
  # 
  # 
  # @param label_id 
  # @param [Hash] opts the optional parameters
  # @return [Label]
  describe 'get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # 
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :batch_id 
  # @option opts [String] :label_status 
  # @option opts [String] :carrier_id 
  # @option opts [String] :service_code 
  # @option opts [String] :tracking_number 
  # @option opts [String] :warehouse_id 
  # @option opts [DateTime] :created_at_start 
  # @option opts [DateTime] :created_at_end 
  # @option opts [Integer] :page 
  # @option opts [Integer] :page_size 
  # @option opts [String] :sort_dir 
  # @option opts [String] :sort_by 
  # @return [ListLabelResponse]
  describe 'list test' do
    it "should work" do
      response =
        VCR.use_cassette("labels_api/list/success") do
          @instance.list(list_stamps_priority_labels)
        end

      expect(response).to be_instance_of ShipEngine::ListLabelResponse
      expect(response.to_hash).to eq list_labels
    end
  end

  # unit tests for purchase_label
  # 
  # 
  # @param request 
  # @param [Hash] opts the optional parameters
  # @return [Label]
  describe 'purchase_label test' do
    it "should work" do
      response =
        VCR.use_cassette("labels_api/purchase_label/success") do
          @instance.purchase_label(shipment_domestic_commercial_address)
        end

      expect(response).to be_instance_of ShipEngine::Label
      expect(response.to_hash).to eq purchase_label_domestic_commercial_address
    end
  end

  # unit tests for purchase_label_with_rate
  # 
  # 
  # @param rate_id 
  # @param request 
  # @param [Hash] opts the optional parameters
  # @return [Label]
  describe 'purchase_label_with_rate test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for purchase_label_with_shipment
  # 
  # 
  # @param shipment_id 
  # @param request 
  # @param [Hash] opts the optional parameters
  # @return [Label]
  describe 'purchase_label_with_shipment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for track
  # 
  # 
  # @param label_id 
  # @param [Hash] opts the optional parameters
  # @return [TrackingInformation]
  describe 'track test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for void_label
  # 
  # 
  # @param label_id 
  # @param [Hash] opts the optional parameters
  # @return [VoidLabelResponse]
  describe 'void_label test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
