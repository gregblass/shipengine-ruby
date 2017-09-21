=begin
#ShipEngine

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require "uri"

module ShipEngine
  class CarriersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # 
    # @param carrier_id 
    # @param [Hash] opts the optional parameters
    # @return [Carrier]
    def get(carrier_id, opts = {})
      data, _status_code, _headers = get_with_http_info(carrier_id, opts)
      return { body: data.to_hash, status_code: _status_code, headers: _headers }
    end

    # 
    # 
    # @param carrier_id 
    # @param [Hash] opts the optional parameters
    # @return [CarrierListOptionsResponse]
    def get_options(carrier_id, opts = {})
      data, _status_code, _headers = get_options_with_http_info(carrier_id, opts)
      return { body: data.to_hash, status_code: _status_code, headers: _headers }
    end

    # 
    # 
    # @param [Hash] opts the optional parameters
    # @return [CarrierListResponse]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      return { body: data.to_hash, status_code: _status_code, headers: _headers }
    end

    # 
    # 
    # @param carrier_id 
    # @param [Hash] opts the optional parameters
    # @return [CarrierListPackagesResponse]
    def list_packages(carrier_id, opts = {})
      data, _status_code, _headers = list_packages_with_http_info(carrier_id, opts)
      return { body: data.to_hash, status_code: _status_code, headers: _headers }
    end

    # 
    # 
    # @param carrier_id 
    # @param [Hash] opts the optional parameters
    # @return [CarrierListServicesResponse]
    def list_services(carrier_id, opts = {})
      data, _status_code, _headers = list_services_with_http_info(carrier_id, opts)
      return { body: data.to_hash, status_code: _status_code, headers: _headers }
    end

    private
    
    # 
    # 
    # @param carrier_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Carrier, Fixnum, Hash)>] Carrier data, response status code and response headers
    def get_with_http_info(carrier_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CarriersApi.get ..."
      end
      # verify the required parameter 'carrier_id' is set
      if @api_client.config.client_side_validation && carrier_id.nil?
        fail ArgumentError, "Missing the required parameter 'carrier_id' when calling CarriersApi.get"
      end
      # resource path
      local_var_path = "/v1/carriers/#{carrier_id}"

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
        :return_type => 'Carrier')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CarriersApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param carrier_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CarrierListOptionsResponse, Fixnum, Hash)>] CarrierListOptionsResponse data, response status code and response headers
    def get_options_with_http_info(carrier_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CarriersApi.get_options ..."
      end
      # verify the required parameter 'carrier_id' is set
      if @api_client.config.client_side_validation && carrier_id.nil?
        fail ArgumentError, "Missing the required parameter 'carrier_id' when calling CarriersApi.get_options"
      end
      # resource path
      local_var_path = "/v1/carriers/{carrier_id}/options".sub('{' + 'carrier_id' + '}', carrier_id.to_s)

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
        :return_type => 'CarrierListOptionsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CarriersApi#get_options\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CarrierListResponse, Fixnum, Hash)>] CarrierListResponse data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CarriersApi.list ..."
      end
      # resource path
      local_var_path = "/v1/carriers"

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
        :return_type => 'CarrierListResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CarriersApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param carrier_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CarrierListPackagesResponse, Fixnum, Hash)>] CarrierListPackagesResponse data, response status code and response headers
    def list_packages_with_http_info(carrier_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CarriersApi.list_packages ..."
      end
      # verify the required parameter 'carrier_id' is set
      if @api_client.config.client_side_validation && carrier_id.nil?
        fail ArgumentError, "Missing the required parameter 'carrier_id' when calling CarriersApi.list_packages"
      end
      # resource path
      local_var_path = "/v1/carriers/{carrier_id}/packages".sub('{' + 'carrier_id' + '}', carrier_id.to_s)

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
        :return_type => 'CarrierListPackagesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CarriersApi#list_packages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param carrier_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CarrierListServicesResponse, Fixnum, Hash)>] CarrierListServicesResponse data, response status code and response headers
    def list_services_with_http_info(carrier_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CarriersApi.list_services ..."
      end
      # verify the required parameter 'carrier_id' is set
      if @api_client.config.client_side_validation && carrier_id.nil?
        fail ArgumentError, "Missing the required parameter 'carrier_id' when calling CarriersApi.list_services"
      end
      # resource path
      local_var_path = "/v1/carriers/{carrier_id}/services".sub('{' + 'carrier_id' + '}', carrier_id.to_s)

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
        :return_type => 'CarrierListServicesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CarriersApi#list_services\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
