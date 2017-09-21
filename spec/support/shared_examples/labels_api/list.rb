RSpec.shared_examples "list" do
  let(:list_labels) do
    {
      body: {
        labels: [],
        total: 0,
        page: 1,
        pages: 0,
        links: {
          first: { href: "https://api.shipengine.com/v1/labels?carrier_id=se-132585&service_code=usps_priority_mail&page=1&page_size=25" },
          last: { href: "https://api.shipengine.com/v1/labels?carrier_id=se-132585&service_code=usps_priority_mail&page=1&page_size=25" },
          prev: {},
          next: {}
        }
      },
      status_code: 200,
      headers: {
        "Date" => "Thu, 21 Sep 2017 16:15:12 GMT",
        "Content-Type" => "application/json; charset=utf-8",
        "Content-Length" => "418",
        "Connection" => "keep-alive",
        "X-Shipengine-Requestid" => "a3720bc6-f154-4a5c-9dd8-90150f032039"
      }
    }
  end
end
