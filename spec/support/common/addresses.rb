RSpec.shared_examples "addresses" do
  let(:domestic_commercial_address) do
    {
      name: "Mickey and Minnie Mouse",
      phone: "714-781-4565",
      company_name: "The Walt Disney Company",
      address_line1: "500 South Buena Vista Street",
      city_locality: "Burbank",
      state_province: "CA",
      postal_code: "91521",
      country_code: "US"
    }
  end
end
