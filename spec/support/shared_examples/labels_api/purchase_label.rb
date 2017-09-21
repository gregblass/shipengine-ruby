RSpec.shared_examples "purchase_label" do
  let(:purchase_label_domestic_commercial_address) do
    {
      body: {
        label_id: "se-test-146538418",
        status: "processing",
        shipment_id: "se-146538418",
        ship_date: DateTime.parse('2017-09-21T00:00:00Z'),
        created_at: DateTime.parse('2017-09-21T16:17:58.9148464Z'),
        shipment_cost: {
          currency: "usd",
          amount: 0.0
        },
        insurance_cost: {
          currency: "usd",
          amount: 0.0
        },
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
        label_download: { href: "https://api.shipengine.com/v1/downloads/6/Sk-Lg-Xf_U-rIDKWEXZuxg/testlabel-146538418.pdf" }
      },
      status_code: 200,
      headers: {
        "Date" => "Thu, 21 Sep 2017 16:17:59 GMT",
        "Content-Type" => "application/json; charset=utf-8",
        "Content-Length" => "919",
        "Connection" => "keep-alive",
        "X-Shipengine-Requestid" => "303f7c4f-323f-4c09-a535-7760cd00d343"
      }
    }
  end
end
