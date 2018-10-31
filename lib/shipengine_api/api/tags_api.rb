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
  class TagsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # tags.update_tag
    # 
    # @param tag_name 
    # @param new_name 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def v1_tags_by_tag_name_and_new_name_put(tag_name, new_name, opts = {})
      v1_tags_by_tag_name_and_new_name_put_with_http_info(tag_name, new_name, opts)
      nil
    end

    # tags.update_tag
    # 
    # @param tag_name 
    # @param new_name 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def v1_tags_by_tag_name_and_new_name_put_with_http_info(tag_name, new_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsApi.v1_tags_by_tag_name_and_new_name_put ...'
      end
      # verify the required parameter 'tag_name' is set
      if @api_client.config.client_side_validation && tag_name.nil?
        fail ArgumentError, "Missing the required parameter 'tag_name' when calling TagsApi.v1_tags_by_tag_name_and_new_name_put"
      end
      # verify the required parameter 'new_name' is set
      if @api_client.config.client_side_validation && new_name.nil?
        fail ArgumentError, "Missing the required parameter 'new_name' when calling TagsApi.v1_tags_by_tag_name_and_new_name_put"
      end
      # resource path
      local_var_path = '/v1/tags/{tag_name}/{new_name}'.sub('{' + 'tag_name' + '}', tag_name.to_s).sub('{' + 'new_name' + '}', new_name.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#v1_tags_by_tag_name_and_new_name_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # tags.delete
    # 
    # @param tag_name 
    # @param [Hash] opts the optional parameters
    # @return [ListTagResponseBody]
    def v1_tags_by_tag_name_delete(tag_name, opts = {})
      data, _status_code, _headers = v1_tags_by_tag_name_delete_with_http_info(tag_name, opts)
      data
    end

    # tags.delete
    # 
    # @param tag_name 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListTagResponseBody, Fixnum, Hash)>] ListTagResponseBody data, response status code and response headers
    def v1_tags_by_tag_name_delete_with_http_info(tag_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsApi.v1_tags_by_tag_name_delete ...'
      end
      # verify the required parameter 'tag_name' is set
      if @api_client.config.client_side_validation && tag_name.nil?
        fail ArgumentError, "Missing the required parameter 'tag_name' when calling TagsApi.v1_tags_by_tag_name_delete"
      end
      # resource path
      local_var_path = '/v1/tags/{tag_name}'.sub('{' + 'tag_name' + '}', tag_name.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListTagResponseBody')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#v1_tags_by_tag_name_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # tags.add_tag
    # 
    # @param tag_name 
    # @param [Hash] opts the optional parameters
    # @return [TagResponseBody]
    def v1_tags_by_tag_name_post(tag_name, opts = {})
      data, _status_code, _headers = v1_tags_by_tag_name_post_with_http_info(tag_name, opts)
      data
    end

    # tags.add_tag
    # 
    # @param tag_name 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TagResponseBody, Fixnum, Hash)>] TagResponseBody data, response status code and response headers
    def v1_tags_by_tag_name_post_with_http_info(tag_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsApi.v1_tags_by_tag_name_post ...'
      end
      # verify the required parameter 'tag_name' is set
      if @api_client.config.client_side_validation && tag_name.nil?
        fail ArgumentError, "Missing the required parameter 'tag_name' when calling TagsApi.v1_tags_by_tag_name_post"
      end
      # resource path
      local_var_path = '/v1/tags/{tag_name}'.sub('{' + 'tag_name' + '}', tag_name.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TagResponseBody')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#v1_tags_by_tag_name_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # tags.find_tags
    # 
    # @param [Hash] opts the optional parameters
    # @return [ListTagResponseBody]
    def v1_tags_get(opts = {})
      data, _status_code, _headers = v1_tags_get_with_http_info(opts)
      data
    end

    # tags.find_tags
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListTagResponseBody, Fixnum, Hash)>] ListTagResponseBody data, response status code and response headers
    def v1_tags_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsApi.v1_tags_get ...'
      end
      # resource path
      local_var_path = '/v1/tags'

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
        :return_type => 'ListTagResponseBody')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#v1_tags_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
