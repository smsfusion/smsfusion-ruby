=begin
#SMS Fusion API

#This is the SMS Fusion API

OpenAPI spec version: 1.0.0
Contact: support@smsfusion.com.au
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class HLRApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # HLR number lookup
    # Perform HLR on number
    # @param key API Key as generated from the &lt;a href&#x3D;&#39;https://www.smsfusion.com.au/admin/api/&#39;&gt;admin panel&lt;/a&gt;
    # @param num A single phone number or &lt;a href&#x3D;&#39;https://www.smsfusion.com.au/help/msisdn/&#39;&gt;MSDISDN&lt;/a&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cc 2 character country code &lt;a href&#x3D;&#39;https://en.wikipedia.org/wiki/ISO_3166-2&#39;&gt;ISO 3166-2&lt;/a&gt; for formatting local numbers internationally
    # @return [HLRCallback]
    def get_hlr(key, num, opts = {})
      data, _status_code, _headers = get_hlr_with_http_info(key, num, opts)
      return data
    end

    # HLR number lookup
    # Perform HLR on number
    # @param key API Key as generated from the &lt;a href&#x3D;&#39;https://www.smsfusion.com.au/admin/api/&#39;&gt;admin panel&lt;/a&gt;
    # @param num A single phone number or &lt;a href&#x3D;&#39;https://www.smsfusion.com.au/help/msisdn/&#39;&gt;MSDISDN&lt;/a&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cc 2 character country code &lt;a href&#x3D;&#39;https://en.wikipedia.org/wiki/ISO_3166-2&#39;&gt;ISO 3166-2&lt;/a&gt; for formatting local numbers internationally
    # @return [Array<(HLRCallback, Fixnum, Hash)>] HLRCallback data, response status code and response headers
    def get_hlr_with_http_info(key, num, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: HLRApi.get_hlr ..."
      end
      # verify the required parameter 'key' is set
      fail ArgumentError, "Missing the required parameter 'key' when calling HLRApi.get_hlr" if key.nil?
      # verify the required parameter 'num' is set
      fail ArgumentError, "Missing the required parameter 'num' when calling HLRApi.get_hlr" if num.nil?
      # resource path
      local_var_path = "/hlr/".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'key'] = key
      query_params[:'num'] = num
      query_params[:'cc'] = opts[:'cc'] if !opts[:'cc'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'HLRCallback')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HLRApi#get_hlr\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # HLR number lookup with results going to a callback URL
    # Perform HLR on number with the result being sent to the callback URL provided
    # @param key API Key as generated from the &lt;a href&#x3D;&#39;https://www.smsfusion.com.au/admin/api/&#39;&gt;admin panel&lt;/a&gt;
    # @param num Comma separated list of phone numbers or &lt;a href&#x3D;&#39;https://www.smsfusion.com.au/help/msisdn/&#39;&gt;MSDISDN&lt;/a&gt;&#39;s
    # @param cb HTTP or HTTPS callback URL for each result. The result will be sent as POST with a json object included in &lt;b&gt;result&lt;/b&gt;. Timeout for callbacks is set to 30 seconds
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cc 2 character country code &lt;a href&#x3D;&#39;https://en.wikipedia.org/wiki/ISO_3166-2&#39;&gt;ISO 3166-2&lt;/a&gt; for formatting local numbers internationally
    # @return [HLRResult]
    def get_hlr_callback(key, num, cb, opts = {})
      data, _status_code, _headers = get_hlr_callback_with_http_info(key, num, cb, opts)
      return data
    end

    # HLR number lookup with results going to a callback URL
    # Perform HLR on number with the result being sent to the callback URL provided
    # @param key API Key as generated from the &lt;a href&#x3D;&#39;https://www.smsfusion.com.au/admin/api/&#39;&gt;admin panel&lt;/a&gt;
    # @param num Comma separated list of phone numbers or &lt;a href&#x3D;&#39;https://www.smsfusion.com.au/help/msisdn/&#39;&gt;MSDISDN&lt;/a&gt;&#39;s
    # @param cb HTTP or HTTPS callback URL for each result. The result will be sent as POST with a json object included in &lt;b&gt;result&lt;/b&gt;. Timeout for callbacks is set to 30 seconds
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cc 2 character country code &lt;a href&#x3D;&#39;https://en.wikipedia.org/wiki/ISO_3166-2&#39;&gt;ISO 3166-2&lt;/a&gt; for formatting local numbers internationally
    # @return [Array<(HLRResult, Fixnum, Hash)>] HLRResult data, response status code and response headers
    def get_hlr_callback_with_http_info(key, num, cb, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: HLRApi.get_hlr_callback ..."
      end
      # verify the required parameter 'key' is set
      fail ArgumentError, "Missing the required parameter 'key' when calling HLRApi.get_hlr_callback" if key.nil?
      # verify the required parameter 'num' is set
      fail ArgumentError, "Missing the required parameter 'num' when calling HLRApi.get_hlr_callback" if num.nil?
      # verify the required parameter 'cb' is set
      fail ArgumentError, "Missing the required parameter 'cb' when calling HLRApi.get_hlr_callback" if cb.nil?
      # resource path
      local_var_path = "/hlr-callback/".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'key'] = key
      query_params[:'num'] = @api_client.build_collection_param(num, :csv)
      query_params[:'cb'] = cb
      query_params[:'cc'] = opts[:'cc'] if !opts[:'cc'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'HLRResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HLRApi#get_hlr_callback\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
