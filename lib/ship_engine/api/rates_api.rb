=begin
#ShipEngine

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require "uri"

module ShipEngine
  class RatesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # 
    # @param estimate_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<Rate>]
    def estimate(estimate_request, opts = {})
      data, _status_code, _headers = estimate_with_http_info(estimate_request, opts)
      return data
    end

    # 
    # 
    # @param estimate_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Rate>, Fixnum, Hash)>] Array<Rate> data, response status code and response headers
    def estimate_with_http_info(estimate_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RatesApi.estimate ..."
      end
      # verify the required parameter 'estimate_request' is set
      if @api_client.config.client_side_validation && estimate_request.nil?
        fail ArgumentError, "Missing the required parameter 'estimate_request' when calling RatesApi.estimate"
      end
      # resource path
      local_var_path = "/v1/rates/estimate"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(estimate_request)
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Rate>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RatesApi#estimate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param rate_id 
    # @param [Hash] opts the optional parameters
    # @return [Rate]
    def get(rate_id, opts = {})
      data, _status_code, _headers = get_with_http_info(rate_id, opts)
      return data
    end

    # 
    # 
    # @param rate_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Rate, Fixnum, Hash)>] Rate data, response status code and response headers
    def get_with_http_info(rate_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RatesApi.get ..."
      end
      # verify the required parameter 'rate_id' is set
      if @api_client.config.client_side_validation && rate_id.nil?
        fail ArgumentError, "Missing the required parameter 'rate_id' when calling RatesApi.get"
      end
      # resource path
      local_var_path = "/v1/rates/{rate_id}".sub('{' + 'rate_id' + '}', rate_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json'])

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
        :return_type => 'Rate')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RatesApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def rate_shipment(request, opts = {})
      rate_shipment_with_http_info(request, opts)
      return nil
    end

    # 
    # 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def rate_shipment_with_http_info(request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RatesApi.rate_shipment ..."
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling RatesApi.rate_shipment"
      end
      # resource path
      local_var_path = "/v1/rates"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json'])

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RatesApi#rate_shipment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def rate_shipments_async(request, opts = {})
      rate_shipments_async_with_http_info(request, opts)
      return nil
    end

    # 
    # 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def rate_shipments_async_with_http_info(request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RatesApi.rate_shipments_async ..."
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling RatesApi.rate_shipments_async"
      end
      # resource path
      local_var_path = "/v1/rates/bulk"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json'])

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RatesApi#rate_shipments_async\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
