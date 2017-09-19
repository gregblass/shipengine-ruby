module Helpers

  # #
  # Initializes API
  # @return [Void]
  def initialize_api
    ShipEngine.configure do |config|
      config.api_key['api-key'] = API_TEST_KEY
    end
  end
end
