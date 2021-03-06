=begin
#ShipEngine API

#ShipEngine™ is the world's best multi-carrier shipping API, with more than 20 supported shipping carriers.  You can easily get and compare shipping rates, print labels, track your shipments, and validate addresses anywhere in the world.  ### Worldwide Major Carrier Support Access the top global carriers in minutes—instead of weeks. Simply [connect your existing carrier accounts](https://docs.shipengine.com/docs/setup-a-carrier) in the API dashboard, and then [begin creating labels](https://docs.shipengine.com/docs/use-a-specific-service).  ### Real-Time Tracking [Track packages](https://docs.shipengine.com/docs/track-a-package) across any of our 20+ supported carrier accounts and create tracking events to keep your customers up-to-date. Easily integrate real-time tracking information for shipments into your app, email, or SMS.  ### Get Rates Across Carriers Make sure you ship as cost-effectively as possible by [quickly comparing rates](https://docs.shipengine.com/docs/get-shipping-rates) using the ShipEngine Rates API. As long as you have the carrier connected to your account, you'll be able to see and compare different rates and services.  ### Global Address Validation No matter your shipping volume, failed deliveries and address change surcharges cut into your bottom line and damage perception with customers. Our address validation services ensure your packages make it to the right place the first time. [Learn how to leverage our address validation services here.](https://docs.shipengine.com/docs/address-validation)  ShipEngine supports address validation for over 180 countries, including the United States, Canada, Great Britain, Australia, Germany, France, Norway, Spain, Sweden, Israel, Italy, and more. 

OpenAPI spec version: 1.0.0
Contact: sales@shipengine.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'uri'

module ShipEngineApi
  class LabelsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # labels.get_by_id
    # 
    # @param label_id 
    # @param [Hash] opts the optional parameters
    # @return [Label]
    def v1_labels_by_label_id_get(label_id, opts = {})
      data, _status_code, _headers = v1_labels_by_label_id_get_with_http_info(label_id, opts)
      data
    end

    # labels.get_by_id
    # 
    # @param label_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Label, Fixnum, Hash)>] Label data, response status code and response headers
    def v1_labels_by_label_id_get_with_http_info(label_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LabelsApi.v1_labels_by_label_id_get ...'
      end
      # verify the required parameter 'label_id' is set
      if @api_client.config.client_side_validation && label_id.nil?
        fail ArgumentError, "Missing the required parameter 'label_id' when calling LabelsApi.v1_labels_by_label_id_get"
      end
      if @api_client.config.client_side_validation && label_id.to_s.length > 25
        fail ArgumentError, 'invalid value for "label_id" when calling LabelsApi.v1_labels_by_label_id_get, the character length must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && label_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "label_id" when calling LabelsApi.v1_labels_by_label_id_get, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && label_id !~ Regexp.new(/^se(-[a-z0-9]+)+$/)
        fail ArgumentError, "invalid value for 'label_id' when calling LabelsApi.v1_labels_by_label_id_get, must conform to the pattern /^se(-[a-z0-9]+)+$/."
      end

      # resource path
      local_var_path = '/v1/labels/{label_id}'.sub('{' + 'label_id' + '}', label_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Label')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LabelsApi#v1_labels_by_label_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Searchforshippinglabelsyou'vecreated
    # This endpoint returns a list of labels that you've [created](https://docs.shipengine.com/docs/quickstart-create-a-label). You can optionally filter the results as well as control their sort order and the number of results returned at a time.  By default, all labels are returned, 25 at a time, starting with the most recently created ones.  You can combine multiple filter options to narrow-down the results.  For example, if you only want to get your UPS labels for your east coast warehouse you could query by both `warehouse_id` and `carrier_id`  > ###### Warning > Test labels (those created with `test_label: true`) are not included in the results.  If you've only ever created test labels, then the results will be empty. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :label_status Only return labels that are currently in the specified status
    # @option opts [String] :carrier_id Only return labels for a specific [carrier account](https://docs.shipengine.com/docs/setup-a-carrier)
    # @option opts [String] :service_code Only return labels for a specific [carrier service](https://docs.shipengine.com/docs/use-a-specific-service)
    # @option opts [String] :tracking_number Only return labels with a specific tracking number
    # @option opts [String] :batch_id Only return labels that were created in a specific [batch](https://docs.shipengine.com/docs/using-batches)
    # @option opts [String] :warehouse_id Only return labels that originate from a specific [warehouse](https://docs.shipengine.com/docs/ship-from-a-warehouse)
    # @option opts [DateTime] :created_at_start Only return labels that were created on or after a specific date/time
    # @option opts [DateTime] :created_at_end Only return labels that were created on or before a specific date/time
    # @option opts [Integer] :page Return a specific \&quot;page\&quot; of results. Defaults to the first page. If set to a number that&#39;s greater than the number of pages of results, an empty page will be returned. (default to 1)
    # @option opts [Integer] :page_size The number of labels to return per response.  Defaults to 25. (default to 25)
    # @option opts [String] :sort_dir Controls the sort order of the query. Defaults to &#x60;desc&#x60;.
    # @option opts [String] :sort_by Controls which property the query is sorted by. Defaults to &#x60;created_at&#x60;. (default to created_at)
    # @return [V1LabelsResponse]
    def v1_labels_get(opts = {})
      data, _status_code, _headers = v1_labels_get_with_http_info(opts)
      data
    end

    # Searchforshippinglabelsyou&#39;vecreated
    # This endpoint returns a list of labels that you&#39;ve [created](https://docs.shipengine.com/docs/quickstart-create-a-label). You can optionally filter the results as well as control their sort order and the number of results returned at a time.  By default, all labels are returned, 25 at a time, starting with the most recently created ones.  You can combine multiple filter options to narrow-down the results.  For example, if you only want to get your UPS labels for your east coast warehouse you could query by both &#x60;warehouse_id&#x60; and &#x60;carrier_id&#x60;  &gt; ###### Warning &gt; Test labels (those created with &#x60;test_label: true&#x60;) are not included in the results.  If you&#39;ve only ever created test labels, then the results will be empty. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :label_status Only return labels that are currently in the specified status
    # @option opts [String] :carrier_id Only return labels for a specific [carrier account](https://docs.shipengine.com/docs/setup-a-carrier)
    # @option opts [String] :service_code Only return labels for a specific [carrier service](https://docs.shipengine.com/docs/use-a-specific-service)
    # @option opts [String] :tracking_number Only return labels with a specific tracking number
    # @option opts [String] :batch_id Only return labels that were created in a specific [batch](https://docs.shipengine.com/docs/using-batches)
    # @option opts [String] :warehouse_id Only return labels that originate from a specific [warehouse](https://docs.shipengine.com/docs/ship-from-a-warehouse)
    # @option opts [DateTime] :created_at_start Only return labels that were created on or after a specific date/time
    # @option opts [DateTime] :created_at_end Only return labels that were created on or before a specific date/time
    # @option opts [Integer] :page Return a specific \&quot;page\&quot; of results. Defaults to the first page. If set to a number that&#39;s greater than the number of pages of results, an empty page will be returned.
    # @option opts [Integer] :page_size The number of labels to return per response.  Defaults to 25.
    # @option opts [String] :sort_dir Controls the sort order of the query. Defaults to &#x60;desc&#x60;.
    # @option opts [String] :sort_by Controls which property the query is sorted by. Defaults to &#x60;created_at&#x60;.
    # @return [Array<(V1LabelsResponse, Fixnum, Hash)>] V1LabelsResponse data, response status code and response headers
    def v1_labels_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LabelsApi.v1_labels_get ...'
      end
      if @api_client.config.client_side_validation && opts[:'label_status'] && !['processing', 'completed', 'error', 'voided'].include?(opts[:'label_status'])
        fail ArgumentError, 'invalid value for "label_status", must be one of processing, completed, error, voided'
      end
      if @api_client.config.client_side_validation && !opts[:'carrier_id'].nil? && opts[:'carrier_id'].to_s.length > 25
        fail ArgumentError, 'invalid value for "opts[:"carrier_id"]" when calling LabelsApi.v1_labels_get, the character length must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && !opts[:'carrier_id'].nil? && opts[:'carrier_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"carrier_id"]" when calling LabelsApi.v1_labels_get, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'carrier_id'].nil? && opts[:'carrier_id'] !~ Regexp.new(/^se(-[a-z0-9]+)+$/)
        fail ArgumentError, "invalid value for 'opts[:\"carrier_id\"]' when calling LabelsApi.v1_labels_get, must conform to the pattern /^se(-[a-z0-9]+)+$/."
      end

      if @api_client.config.client_side_validation && !opts[:'service_code'].nil? && opts[:'service_code'].to_s.length > 100
        fail ArgumentError, 'invalid value for "opts[:"service_code"]" when calling LabelsApi.v1_labels_get, the character length must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'service_code'].nil? && opts[:'service_code'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"service_code"]" when calling LabelsApi.v1_labels_get, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'service_code'].nil? && opts[:'service_code'] !~ Regexp.new(/^[a-z0-9]+([_-][a-z0-9]+)*\\s*$/)
        fail ArgumentError, "invalid value for 'opts[:\"service_code\"]' when calling LabelsApi.v1_labels_get, must conform to the pattern /^[a-z0-9]+([_-][a-z0-9]+)*\\s*$/."
      end

      if @api_client.config.client_side_validation && !opts[:'tracking_number'].nil? && opts[:'tracking_number'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"tracking_number"]" when calling LabelsApi.v1_labels_get, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'batch_id'].nil? && opts[:'batch_id'].to_s.length > 25
        fail ArgumentError, 'invalid value for "opts[:"batch_id"]" when calling LabelsApi.v1_labels_get, the character length must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && !opts[:'batch_id'].nil? && opts[:'batch_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"batch_id"]" when calling LabelsApi.v1_labels_get, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'batch_id'].nil? && opts[:'batch_id'] !~ Regexp.new(/^se(-[a-z0-9]+)+$/)
        fail ArgumentError, "invalid value for 'opts[:\"batch_id\"]' when calling LabelsApi.v1_labels_get, must conform to the pattern /^se(-[a-z0-9]+)+$/."
      end

      if @api_client.config.client_side_validation && !opts[:'warehouse_id'].nil? && opts[:'warehouse_id'].to_s.length > 25
        fail ArgumentError, 'invalid value for "opts[:"warehouse_id"]" when calling LabelsApi.v1_labels_get, the character length must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && !opts[:'warehouse_id'].nil? && opts[:'warehouse_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"warehouse_id"]" when calling LabelsApi.v1_labels_get, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'warehouse_id'].nil? && opts[:'warehouse_id'] !~ Regexp.new(/^se(-[a-z0-9]+)+$/)
        fail ArgumentError, "invalid value for 'opts[:\"warehouse_id\"]' when calling LabelsApi.v1_labels_get, must conform to the pattern /^se(-[a-z0-9]+)+$/."
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling LabelsApi.v1_labels_get, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling LabelsApi.v1_labels_get, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'sort_dir'] && !['processing', 'completed', 'error', 'voided'].include?(opts[:'sort_dir'])
        fail ArgumentError, 'invalid value for "sort_dir", must be one of processing, completed, error, voided'
      end
      if @api_client.config.client_side_validation && opts[:'sort_by'] && !['modified_at', 'created_at'].include?(opts[:'sort_by'])
        fail ArgumentError, 'invalid value for "sort_by", must be one of modified_at, created_at'
      end
      # resource path
      local_var_path = '/v1/labels'

      # query parameters
      query_params = {}
      query_params[:'label_status'] = opts[:'label_status'] if !opts[:'label_status'].nil?
      query_params[:'carrier_id'] = opts[:'carrier_id'] if !opts[:'carrier_id'].nil?
      query_params[:'service_code'] = opts[:'service_code'] if !opts[:'service_code'].nil?
      query_params[:'tracking_number'] = opts[:'tracking_number'] if !opts[:'tracking_number'].nil?
      query_params[:'batch_id'] = opts[:'batch_id'] if !opts[:'batch_id'].nil?
      query_params[:'warehouse_id'] = opts[:'warehouse_id'] if !opts[:'warehouse_id'].nil?
      query_params[:'created_at_start'] = opts[:'created_at_start'] if !opts[:'created_at_start'].nil?
      query_params[:'created_at_end'] = opts[:'created_at_end'] if !opts[:'created_at_end'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_dir'] = opts[:'sort_dir'] if !opts[:'sort_dir'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'V1LabelsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LabelsApi#v1_labels_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # labels.purchase_label_with_rate
    # 
    # @param rate_id 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Label]
    def v1_labels_rates_by_rate_id_post(rate_id, body, opts = {})
      data, _status_code, _headers = v1_labels_rates_by_rate_id_post_with_http_info(rate_id, body, opts)
      data
    end

    # labels.purchase_label_with_rate
    # 
    # @param rate_id 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Label, Fixnum, Hash)>] Label data, response status code and response headers
    def v1_labels_rates_by_rate_id_post_with_http_info(rate_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LabelsApi.v1_labels_rates_by_rate_id_post ...'
      end
      # verify the required parameter 'rate_id' is set
      if @api_client.config.client_side_validation && rate_id.nil?
        fail ArgumentError, "Missing the required parameter 'rate_id' when calling LabelsApi.v1_labels_rates_by_rate_id_post"
      end
      if @api_client.config.client_side_validation && rate_id.to_s.length > 25
        fail ArgumentError, 'invalid value for "rate_id" when calling LabelsApi.v1_labels_rates_by_rate_id_post, the character length must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && rate_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "rate_id" when calling LabelsApi.v1_labels_rates_by_rate_id_post, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && rate_id !~ Regexp.new(/^se(-[a-z0-9]+)+$/)
        fail ArgumentError, "invalid value for 'rate_id' when calling LabelsApi.v1_labels_rates_by_rate_id_post, must conform to the pattern /^se(-[a-z0-9]+)+$/."
      end

      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling LabelsApi.v1_labels_rates_by_rate_id_post"
      end
      # resource path
      local_var_path = '/v1/labels/rates/{rate_id}'.sub('{' + 'rate_id' + '}', rate_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Label')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LabelsApi#v1_labels_rates_by_rate_id_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # labels.purchase_label_with_shipment
    # 
    # @param shipment_id 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Label]
    def v1_labels_shipment_by_shipment_id_post(shipment_id, body, opts = {})
      data, _status_code, _headers = v1_labels_shipment_by_shipment_id_post_with_http_info(shipment_id, body, opts)
      data
    end

    # labels.purchase_label_with_shipment
    # 
    # @param shipment_id 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Label, Fixnum, Hash)>] Label data, response status code and response headers
    def v1_labels_shipment_by_shipment_id_post_with_http_info(shipment_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LabelsApi.v1_labels_shipment_by_shipment_id_post ...'
      end
      # verify the required parameter 'shipment_id' is set
      if @api_client.config.client_side_validation && shipment_id.nil?
        fail ArgumentError, "Missing the required parameter 'shipment_id' when calling LabelsApi.v1_labels_shipment_by_shipment_id_post"
      end
      if @api_client.config.client_side_validation && shipment_id.to_s.length > 25
        fail ArgumentError, 'invalid value for "shipment_id" when calling LabelsApi.v1_labels_shipment_by_shipment_id_post, the character length must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && shipment_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "shipment_id" when calling LabelsApi.v1_labels_shipment_by_shipment_id_post, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && shipment_id !~ Regexp.new(/^se(-[a-z0-9]+)+$/)
        fail ArgumentError, "invalid value for 'shipment_id' when calling LabelsApi.v1_labels_shipment_by_shipment_id_post, must conform to the pattern /^se(-[a-z0-9]+)+$/."
      end

      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling LabelsApi.v1_labels_shipment_by_shipment_id_post"
      end
      # resource path
      local_var_path = '/v1/labels/shipment/{shipment_id}'.sub('{' + 'shipment_id' + '}', shipment_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Label')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LabelsApi#v1_labels_shipment_by_shipment_id_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # labels.track
    # 
    # @param label_id 
    # @param [Hash] opts the optional parameters
    # @return [TrackingInformationResponseBody]
    def v1_labels_track_by_label_id_get(label_id, opts = {})
      data, _status_code, _headers = v1_labels_track_by_label_id_get_with_http_info(label_id, opts)
      data
    end

    # labels.track
    # 
    # @param label_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TrackingInformationResponseBody, Fixnum, Hash)>] TrackingInformationResponseBody data, response status code and response headers
    def v1_labels_track_by_label_id_get_with_http_info(label_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LabelsApi.v1_labels_track_by_label_id_get ...'
      end
      # verify the required parameter 'label_id' is set
      if @api_client.config.client_side_validation && label_id.nil?
        fail ArgumentError, "Missing the required parameter 'label_id' when calling LabelsApi.v1_labels_track_by_label_id_get"
      end
      if @api_client.config.client_side_validation && label_id.to_s.length > 25
        fail ArgumentError, 'invalid value for "label_id" when calling LabelsApi.v1_labels_track_by_label_id_get, the character length must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && label_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "label_id" when calling LabelsApi.v1_labels_track_by_label_id_get, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && label_id !~ Regexp.new(/^se(-[a-z0-9]+)+$/)
        fail ArgumentError, "invalid value for 'label_id' when calling LabelsApi.v1_labels_track_by_label_id_get, must conform to the pattern /^se(-[a-z0-9]+)+$/."
      end

      # resource path
      local_var_path = '/v1/labels/{label_id}/track'.sub('{' + 'label_id' + '}', label_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TrackingInformationResponseBody')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LabelsApi#v1_labels_track_by_label_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # labels.void_label
    # 
    # @param label_id 
    # @param [Hash] opts the optional parameters
    # @return [VoidLabelResponseBody]
    def v1_labels_void_by_label_id_put(label_id, opts = {})
      data, _status_code, _headers = v1_labels_void_by_label_id_put_with_http_info(label_id, opts)
      data
    end

    # labels.void_label
    # 
    # @param label_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VoidLabelResponseBody, Fixnum, Hash)>] VoidLabelResponseBody data, response status code and response headers
    def v1_labels_void_by_label_id_put_with_http_info(label_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LabelsApi.v1_labels_void_by_label_id_put ...'
      end
      # verify the required parameter 'label_id' is set
      if @api_client.config.client_side_validation && label_id.nil?
        fail ArgumentError, "Missing the required parameter 'label_id' when calling LabelsApi.v1_labels_void_by_label_id_put"
      end
      if @api_client.config.client_side_validation && label_id.to_s.length > 25
        fail ArgumentError, 'invalid value for "label_id" when calling LabelsApi.v1_labels_void_by_label_id_put, the character length must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && label_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "label_id" when calling LabelsApi.v1_labels_void_by_label_id_put, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && label_id !~ Regexp.new(/^se(-[a-z0-9]+)+$/)
        fail ArgumentError, "invalid value for 'label_id' when calling LabelsApi.v1_labels_void_by_label_id_put, must conform to the pattern /^se(-[a-z0-9]+)+$/."
      end

      # resource path
      local_var_path = '/v1/labels/{label_id}/void'.sub('{' + 'label_id' + '}', label_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'VoidLabelResponseBody')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LabelsApi#v1_labels_void_by_label_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
