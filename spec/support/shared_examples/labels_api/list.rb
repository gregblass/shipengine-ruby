RSpec.shared_examples "list" do
  let(:list_labels) do
    {
      labels: [],
      total: 0,
      page: 1,
      pages: 0,
      links:
      {
        first: { href: "https://api.shipengine.com/v1/labels?carrier_id=se-132585&service_code=usps_priority_mail&page=1&page_size=25" },
        last: { href: "https://api.shipengine.com/v1/labels?carrier_id=se-132585&service_code=usps_priority_mail&page=1&page_size=25" },
        prev: {},
        next: {}
      }
    }
  end
end
