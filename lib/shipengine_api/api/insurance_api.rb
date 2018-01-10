=begin
#ShipEngine

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1-SNAPSHOT

=end

require "uri"

module ShipEngineApi
  class InsuranceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # 
    # @param cost 
    # @param api_key API Key
    # @param [Hash] opts the optional parameters
    # @return [MoneyDTO]
    def insurance_add_funds(cost, api_key, opts = {})
      data, _status_code, _headers = insurance_add_funds_with_http_info(cost, api_key, opts)
      return data
    end

    # 
    # 
    # @param cost 
    # @param api_key API Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(MoneyDTO, Fixnum, Hash)>] MoneyDTO data, response status code and response headers
    def insurance_add_funds_with_http_info(cost, api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InsuranceApi.insurance_add_funds ..."
      end
      # verify the required parameter 'cost' is set
      if @api_client.config.client_side_validation && cost.nil?
        fail ArgumentError, "Missing the required parameter 'cost' when calling InsuranceApi.insurance_add_funds"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling InsuranceApi.insurance_add_funds"
      end
      # resource path
      local_var_path = "/v1/insurance/shipsurance/add_funds"

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
      post_body = @api_client.object_to_http_body(cost)
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MoneyDTO')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InsuranceApi#insurance_add_funds\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param api_key API Key
    # @param [Hash] opts the optional parameters
    # @return [MoneyDTO]
    def insurance_get_balance(api_key, opts = {})
      data, _status_code, _headers = insurance_get_balance_with_http_info(api_key, opts)
      return data
    end

    # 
    # 
    # @param api_key API Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(MoneyDTO, Fixnum, Hash)>] MoneyDTO data, response status code and response headers
    def insurance_get_balance_with_http_info(api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InsuranceApi.insurance_get_balance ..."
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling InsuranceApi.insurance_get_balance"
      end
      # resource path
      local_var_path = "/v1/insurance/shipsurance/balance"

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
        :return_type => 'MoneyDTO')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InsuranceApi#insurance_get_balance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end