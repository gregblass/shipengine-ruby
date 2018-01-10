=begin
#ShipEngine

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1-SNAPSHOT

=end

require "uri"

module ShipEngineApi
  class LabelsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # 
    # @param label_id 
    # @param api_key API Key
    # @param [Hash] opts the optional parameters
    # @return [Label]
    def labels_get(label_id, api_key, opts = {})
      data, _status_code, _headers = labels_get_with_http_info(label_id, api_key, opts)
      return data
    end

    # 
    # 
    # @param label_id 
    # @param api_key API Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(Label, Fixnum, Hash)>] Label data, response status code and response headers
    def labels_get_with_http_info(label_id, api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LabelsApi.labels_get ..."
      end
      # verify the required parameter 'label_id' is set
      if @api_client.config.client_side_validation && label_id.nil?
        fail ArgumentError, "Missing the required parameter 'label_id' when calling LabelsApi.labels_get"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling LabelsApi.labels_get"
      end
      # resource path
      local_var_path = "/v1/labels/{label_id}".sub('{' + 'label_id' + '}', label_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json'])
      header_params[:'api-key'] = api_key

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
        @api_client.config.logger.debug "API called: LabelsApi#labels_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param api_key API Key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :batch_id 
    # @option opts [String] :label_status 
    # @option opts [String] :carrier_id 
    # @option opts [String] :service_code 
    # @option opts [String] :tracking_number 
    # @option opts [String] :warehouse_id 
    # @option opts [DateTime] :created_at_start 
    # @option opts [DateTime] :created_at_end 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @option opts [String] :sort_dir 
    # @option opts [String] :sort_by 
    # @return [ListLabelResponse]
    def labels_list(api_key, opts = {})
      data, _status_code, _headers = labels_list_with_http_info(api_key, opts)
      return data
    end

    # 
    # 
    # @param api_key API Key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :batch_id 
    # @option opts [String] :label_status 
    # @option opts [String] :carrier_id 
    # @option opts [String] :service_code 
    # @option opts [String] :tracking_number 
    # @option opts [String] :warehouse_id 
    # @option opts [DateTime] :created_at_start 
    # @option opts [DateTime] :created_at_end 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @option opts [String] :sort_dir 
    # @option opts [String] :sort_by 
    # @return [Array<(ListLabelResponse, Fixnum, Hash)>] ListLabelResponse data, response status code and response headers
    def labels_list_with_http_info(api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LabelsApi.labels_list ..."
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling LabelsApi.labels_list"
      end
      if @api_client.config.client_side_validation && opts[:'label_status'] && !['processing', 'completed', 'error', 'voided'].include?(opts[:'label_status'])
        fail ArgumentError, 'invalid value for "label_status", must be one of processing, completed, error, voided'
      end
      if @api_client.config.client_side_validation && opts[:'sort_dir'] && !['asc', 'desc'].include?(opts[:'sort_dir'])
        fail ArgumentError, 'invalid value for "sort_dir", must be one of asc, desc'
      end
      if @api_client.config.client_side_validation && opts[:'sort_by'] && !['modified_at', 'created_at'].include?(opts[:'sort_by'])
        fail ArgumentError, 'invalid value for "sort_by", must be one of modified_at, created_at'
      end
      # resource path
      local_var_path = "/v1/labels"

      # query parameters
      query_params = {}
      query_params[:'batch_id'] = opts[:'batch_id'] if !opts[:'batch_id'].nil?
      query_params[:'label_status'] = opts[:'label_status'] if !opts[:'label_status'].nil?
      query_params[:'carrier_id'] = opts[:'carrier_id'] if !opts[:'carrier_id'].nil?
      query_params[:'service_code'] = opts[:'service_code'] if !opts[:'service_code'].nil?
      query_params[:'tracking_number'] = opts[:'tracking_number'] if !opts[:'tracking_number'].nil?
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
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json'])
      header_params[:'api-key'] = api_key

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
        :return_type => 'ListLabelResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LabelsApi#labels_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param request 
    # @param api_key API Key
    # @param [Hash] opts the optional parameters
    # @return [Label]
    def labels_purchase_label(request, api_key, opts = {})
      data, _status_code, _headers = labels_purchase_label_with_http_info(request, api_key, opts)
      return data
    end

    # 
    # 
    # @param request 
    # @param api_key API Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(Label, Fixnum, Hash)>] Label data, response status code and response headers
    def labels_purchase_label_with_http_info(request, api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LabelsApi.labels_purchase_label ..."
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling LabelsApi.labels_purchase_label"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling LabelsApi.labels_purchase_label"
      end
      # resource path
      local_var_path = "/v1/labels"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json'])
      header_params[:'api-key'] = api_key

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Label')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LabelsApi#labels_purchase_label\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param rate_id 
    # @param request 
    # @param api_key API Key
    # @param [Hash] opts the optional parameters
    # @return [Label]
    def labels_purchase_label_with_rate(rate_id, request, api_key, opts = {})
      data, _status_code, _headers = labels_purchase_label_with_rate_with_http_info(rate_id, request, api_key, opts)
      return data
    end

    # 
    # 
    # @param rate_id 
    # @param request 
    # @param api_key API Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(Label, Fixnum, Hash)>] Label data, response status code and response headers
    def labels_purchase_label_with_rate_with_http_info(rate_id, request, api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LabelsApi.labels_purchase_label_with_rate ..."
      end
      # verify the required parameter 'rate_id' is set
      if @api_client.config.client_side_validation && rate_id.nil?
        fail ArgumentError, "Missing the required parameter 'rate_id' when calling LabelsApi.labels_purchase_label_with_rate"
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling LabelsApi.labels_purchase_label_with_rate"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling LabelsApi.labels_purchase_label_with_rate"
      end
      # resource path
      local_var_path = "/v1/labels/rates/{rate_id}".sub('{' + 'rate_id' + '}', rate_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json'])
      header_params[:'api-key'] = api_key

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Label')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LabelsApi#labels_purchase_label_with_rate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param shipment_id 
    # @param request 
    # @param api_key API Key
    # @param [Hash] opts the optional parameters
    # @return [Label]
    def labels_purchase_label_with_shipment(shipment_id, request, api_key, opts = {})
      data, _status_code, _headers = labels_purchase_label_with_shipment_with_http_info(shipment_id, request, api_key, opts)
      return data
    end

    # 
    # 
    # @param shipment_id 
    # @param request 
    # @param api_key API Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(Label, Fixnum, Hash)>] Label data, response status code and response headers
    def labels_purchase_label_with_shipment_with_http_info(shipment_id, request, api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LabelsApi.labels_purchase_label_with_shipment ..."
      end
      # verify the required parameter 'shipment_id' is set
      if @api_client.config.client_side_validation && shipment_id.nil?
        fail ArgumentError, "Missing the required parameter 'shipment_id' when calling LabelsApi.labels_purchase_label_with_shipment"
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling LabelsApi.labels_purchase_label_with_shipment"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling LabelsApi.labels_purchase_label_with_shipment"
      end
      # resource path
      local_var_path = "/v1/labels/shipment/{shipment_id}".sub('{' + 'shipment_id' + '}', shipment_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json'])
      header_params[:'api-key'] = api_key

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Label')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LabelsApi#labels_purchase_label_with_shipment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param label_id 
    # @param api_key API Key
    # @param [Hash] opts the optional parameters
    # @return [TrackingInformation]
    def labels_track(label_id, api_key, opts = {})
      data, _status_code, _headers = labels_track_with_http_info(label_id, api_key, opts)
      return data
    end

    # 
    # 
    # @param label_id 
    # @param api_key API Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(TrackingInformation, Fixnum, Hash)>] TrackingInformation data, response status code and response headers
    def labels_track_with_http_info(label_id, api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LabelsApi.labels_track ..."
      end
      # verify the required parameter 'label_id' is set
      if @api_client.config.client_side_validation && label_id.nil?
        fail ArgumentError, "Missing the required parameter 'label_id' when calling LabelsApi.labels_track"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling LabelsApi.labels_track"
      end
      # resource path
      local_var_path = "/v1/labels/{label_id}/track".sub('{' + 'label_id' + '}', label_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json'])
      header_params[:'api-key'] = api_key

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
        :return_type => 'TrackingInformation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LabelsApi#labels_track\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param label_id 
    # @param api_key API Key
    # @param [Hash] opts the optional parameters
    # @return [VoidLabelResponse]
    def labels_void_label(label_id, api_key, opts = {})
      data, _status_code, _headers = labels_void_label_with_http_info(label_id, api_key, opts)
      return data
    end

    # 
    # 
    # @param label_id 
    # @param api_key API Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(VoidLabelResponse, Fixnum, Hash)>] VoidLabelResponse data, response status code and response headers
    def labels_void_label_with_http_info(label_id, api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LabelsApi.labels_void_label ..."
      end
      # verify the required parameter 'label_id' is set
      if @api_client.config.client_side_validation && label_id.nil?
        fail ArgumentError, "Missing the required parameter 'label_id' when calling LabelsApi.labels_void_label"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling LabelsApi.labels_void_label"
      end
      # resource path
      local_var_path = "/v1/labels/{label_id}/void".sub('{' + 'label_id' + '}', label_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json'])
      header_params[:'api-key'] = api_key

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
        :return_type => 'VoidLabelResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LabelsApi#labels_void_label\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end