require 'spec_helper'
require 'json'
require 'vcr'

VCR.configure do |config|
  config.cassette_library_dir = "spec/vcr_cassettes"
  config.hook_into :webmock
end

# Unit tests for ShipEngine::AddressValidationApi
describe 'AddressValidationApi' do
  include_examples 'addresses'
  include_examples 'validate_addresses'

  before do
    initialize_api
    @instance = ShipEngine::AddressValidationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AddressValidationApi' do
    it 'should create an instance of AddressValidationApi' do
      expect(@instance).to be_instance_of(ShipEngine::AddressValidationApi)
    end
  end

  # unit tests for validate_addresses
  # 
  # 
  # @param addresses 
  # @param [Hash] opts the optional parameters
  # @return [Array<AddressValidationResponseDTO>]
  describe 'validate_addresses test' do
    it "should work" do
      address = [ShipEngine::AddressDTO.new(domestic_commercial_address)]

      response =
        VCR.use_cassette("address_validation_api/validate_addresses/verified") do
          @instance.validate_addresses(address)
        end

      expect(response).to be_instance_of Array
      expect(response.first).to be_instance_of ShipEngine::AddressValidationResponseDTO
      expect(response.first.to_hash).to eq verified_response
    end
  end

end
