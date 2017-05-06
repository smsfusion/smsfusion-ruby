=begin
#SMS Fusion API

#This is the SMS Fusion API

OpenAPI spec version: 1.0.0
Contact: support@smsfusion.com.au
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class SMSApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Send an SMS
    # Send one or more SMS
    # @param key API Key as generated from the &lt;a href&#x3D;&#39;https://www.smsfusion.com.au/admin/api/&#39;&gt;admin panel&lt;/a&gt;
    # @param num Comma separated list of phone numbers or &lt;a href&#x3D;&#39;https://www.smsfusion.com.au/help/msisdn/&#39;&gt;MSDISDN&lt;/a&gt;&#39;s
    # @param msg Message content to send
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from MSISDN or vanity alphanumeric source number
    # @option opts [String] :deliverby UTC encoded time to send the SMS
    # @option opts [String] :dlrcb HTTP or HTTPS callback URL for delivery reports. Timeout for callbacks is set to 30 seconds
    # @option opts [String] :replycb HTTP or HTTPS callback URL for replies. Timeout for callbacks is set to 30 seconds
    # @option opts [String] :replyemail Email address to send replies to
    # @option opts [Integer] :validity Time in minutes to keep the SMS valid for
    # @option opts [String] :cc 2 character country code &lt;a href&#x3D;&#39;https://en.wikipedia.org/wiki/ISO_3166-2&#39;&gt;ISO 3166-2&lt;/a&gt; for formatting local numbers internationally
    # @return [SMSResult]
    def send_sms(key, num, msg, opts = {})
      data, _status_code, _headers = send_sms_with_http_info(key, num, msg, opts)
      return data
    end

    # Send an SMS
    # Send one or more SMS
    # @param key API Key as generated from the &lt;a href&#x3D;&#39;https://www.smsfusion.com.au/admin/api/&#39;&gt;admin panel&lt;/a&gt;
    # @param num Comma separated list of phone numbers or &lt;a href&#x3D;&#39;https://www.smsfusion.com.au/help/msisdn/&#39;&gt;MSDISDN&lt;/a&gt;&#39;s
    # @param msg Message content to send
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from MSISDN or vanity alphanumeric source number
    # @option opts [String] :deliverby UTC encoded time to send the SMS
    # @option opts [String] :dlrcb HTTP or HTTPS callback URL for delivery reports. Timeout for callbacks is set to 30 seconds
    # @option opts [String] :replycb HTTP or HTTPS callback URL for replies. Timeout for callbacks is set to 30 seconds
    # @option opts [String] :replyemail Email address to send replies to
    # @option opts [Integer] :validity Time in minutes to keep the SMS valid for
    # @option opts [String] :cc 2 character country code &lt;a href&#x3D;&#39;https://en.wikipedia.org/wiki/ISO_3166-2&#39;&gt;ISO 3166-2&lt;/a&gt; for formatting local numbers internationally
    # @return [Array<(SMSResult, Fixnum, Hash)>] SMSResult data, response status code and response headers
    def send_sms_with_http_info(key, num, msg, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SMSApi.send_sms ..."
      end
      # verify the required parameter 'key' is set
      fail ArgumentError, "Missing the required parameter 'key' when calling SMSApi.send_sms" if key.nil?
      # verify the required parameter 'num' is set
      fail ArgumentError, "Missing the required parameter 'num' when calling SMSApi.send_sms" if num.nil?
      # verify the required parameter 'msg' is set
      fail ArgumentError, "Missing the required parameter 'msg' when calling SMSApi.send_sms" if msg.nil?
      # resource path
      local_var_path = "/sms/".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'key'] = key
      query_params[:'num'] = @api_client.build_collection_param(num, :csv)
      query_params[:'msg'] = msg
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'deliverby'] = opts[:'deliverby'] if !opts[:'deliverby'].nil?
      query_params[:'dlrcb'] = opts[:'dlrcb'] if !opts[:'dlrcb'].nil?
      query_params[:'replycb'] = opts[:'replycb'] if !opts[:'replycb'].nil?
      query_params[:'replyemail'] = opts[:'replyemail'] if !opts[:'replyemail'].nil?
      query_params[:'validity'] = opts[:'validity'] if !opts[:'validity'].nil?
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
        :return_type => 'SMSResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SMSApi#send_sms\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
