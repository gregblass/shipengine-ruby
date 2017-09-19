RSpec.shared_examples "validate_addresses" do
  let(:verified_response) do
    {
      status: "verified",
      original_address: {
        name: "Mickey and Minnie Mouse",
        phone: "714-781-4565",
        company_name: "The Walt Disney Company",
        address_line1: "500 South Buena Vista Street",
        city_locality: "Burbank",
        state_province: "CA",
        postal_code: "91521",
        country_code: "US",
        address_residential_indicator: "unknown"
      },
      matched_address: {
        name: "MICKEY AND MINNIE MOUSE",
        phone: "714-781-4565",
        company_name: "THE WALT DISNEY COMPANY",
        address_line1: "500 S BUENA VISTA ST",
        address_line2: "",
        city_locality: "BURBANK",
        state_province: "CA",
        postal_code: "91521-0007",
        country_code: "US",
        address_residential_indicator: "no"
      },
      messages: []
    }
  end
end
