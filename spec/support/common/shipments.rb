RSpec.shared_examples "shipments" do
  let(:shipment_domestic_commercial_address) do
    {
      shipment: {
        service_code: "usps_priority_mail",
        ship_to: {
          name: "Mickey and Minnie Mouse",
          phone: "+1 (714) 781-4565",
          company_name: "The Walt Disney Company",
          address_line1: "500 South Buena Vista Street",
          city_locality: "Burbank",
          state_province: "CA",
          postal_code: "91521",
          country_code: "US",
          address_residential_indicator: "No"
        },
        ship_from: {
          name: "Shippy",
          phone: "512-485-4282",
          company_name: "ShipStation",
          address_line1: "3800 N. Lamar Blvd.",
          address_line2: "Suite 220",
          city_locality: "Austin",
          state_province: "TX",
          postal_code: "78756",
          country_code: "US",
          address_residential_indicator: "No"
        },
        packages: [
          {
            weight: {
              value: 1.0,
              unit: "ounce"
            }
          }
        ]
      },
      test_label: true
    }
  end
end
