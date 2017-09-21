=begin
#ShipEngine

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require "uri"

module ShipEngine
  class PackagesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # 
    # @param package 
    # @param [Hash] opts the optional parameters
    # @return [Package]
    def create(package, opts = {})
      data, _status_code, _headers = create_with_http_info(package, opts)
      return { body: data.to_hash, status_code: _status_code, headers: _headers }
    end

    # 
    # 
    # @param package_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete(package_id, opts = {})
      delete_with_http_info(package_id, opts)
      return nil
    end

    # 
    # 
    # @param package_id 
    # @param [Hash] opts the optional parameters
    # @return [Package]
    def get(package_id, opts = {})
      data, _status_code, _headers = get_with_http_info(package_id, opts)
      return { body: data.to_hash, status_code: _status_code, headers: _headers }
    end

    # 
    # 
    # @param [Hash] opts the optional parameters
    # @return [PackagesListResponse]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      return { body: data.to_hash, status_code: _status_code, headers: _headers }
    end

    # 
    # 
    # @param package_id 
    # @param package 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update(package_id, package, opts = {})
      update_with_http_info(package_id, package, opts)
      return nil
    end

    private

    # 
    # 
    # @param package 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Package, Fixnum, Hash)>] Package data, response status code and response headers
    def create_with_http_info(package, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PackagesApi.create ..."
      end
      # verify the required parameter 'package' is set
      if @api_client.config.client_side_validation && package.nil?
        fail ArgumentError, "Missing the required parameter 'package' when calling PackagesApi.create"
      end
      # resource path
      local_var_path = "/v1/packages"

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
      post_body = @api_client.object_to_http_body(package)
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Package')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PackagesApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param package_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(package_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PackagesApi.delete ..."
      end
      # verify the required parameter 'package_id' is set
      if @api_client.config.client_side_validation && package_id.nil?
        fail ArgumentError, "Missing the required parameter 'package_id' when calling PackagesApi.delete"
      end
      # resource path
      local_var_path = "/v1/packages/{package_id}".sub('{' + 'package_id' + '}', package_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PackagesApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param package_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Package, Fixnum, Hash)>] Package data, response status code and response headers
    def get_with_http_info(package_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PackagesApi.get ..."
      end
      # verify the required parameter 'package_id' is set
      if @api_client.config.client_side_validation && package_id.nil?
        fail ArgumentError, "Missing the required parameter 'package_id' when calling PackagesApi.get"
      end
      # resource path
      local_var_path = "/v1/packages/{package_id}".sub('{' + 'package_id' + '}', package_id.to_s)

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
        :return_type => 'Package')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PackagesApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PackagesListResponse, Fixnum, Hash)>] PackagesListResponse data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PackagesApi.list ..."
      end
      # resource path
      local_var_path = "/v1/packages"

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
        :return_type => 'PackagesListResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PackagesApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param package_id 
    # @param package 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(package_id, package, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PackagesApi.update ..."
      end
      # verify the required parameter 'package_id' is set
      if @api_client.config.client_side_validation && package_id.nil?
        fail ArgumentError, "Missing the required parameter 'package_id' when calling PackagesApi.update"
      end
      # verify the required parameter 'package' is set
      if @api_client.config.client_side_validation && package.nil?
        fail ArgumentError, "Missing the required parameter 'package' when calling PackagesApi.update"
      end
      # resource path
      local_var_path = "/v1/packages/{package_id}".sub('{' + 'package_id' + '}', package_id.to_s)

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
      post_body = @api_client.object_to_http_body(package)
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PackagesApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
