RSpec.shared_examples "purchase_label" do
  let(:purchase_label_domestic_commercial_address) do
    {
      label_id: "se-test-145280020",
      status: "processing",
      shipment_id: "se-145280020",
      ship_date: DateTime.parse('2017-09-18T00:00:00Z'),
      created_at: DateTime.parse('2017-09-18T22:49:31.8605912Z'),
      shipment_cost: { currency: "usd", amount: 0.0 },
      insurance_cost: { currency: "usd", amount: 0.0 },
      tracking_number: "9999999999999",
      is_return_label: false,
      is_international: false,
      batch_id: "",
      carrier_id: "se-132585",
      service_code: "usps_priority_mail",
      package_code: "package",
      voided: false,
      label_format: "pdf",
      label_layout: "4x6",
      trackable: true,
      carrier_code: "stamps_com",
      tracking_status: "unknown",
      label_download: { href: "https://api.shipengine.com/v1/downloads/6/iishP6TXf0CcBjAvWIbJDA/testlabel-145280020.pdf" }
    }
  end
end
