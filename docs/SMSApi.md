# SwaggerClient::SMSApi

All URIs are relative to *https://api.smsfusion.com.au/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**send_sms**](SMSApi.md#send_sms) | **GET** /sms/ | Send an SMS


# **send_sms**
> SMSResult send_sms(key, num, msg, opts)

Send an SMS

Send one or more SMS

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['key'] = 'Bearer'
end

api_instance = SwaggerClient::SMSApi.new

key = "key_example" # String | API Key as generated from the <a href='https://www.smsfusion.com.au/admin/api/'>admin panel</a>

num = ["num_example"] # Array<String> | Comma separated list of phone numbers or <a href='https://www.smsfusion.com.au/help/msisdn/'>MSDISDN</a>'s

msg = "msg_example" # String | Message content to send

opts = { 
  from: "from_example", # String | MSISDN or vanity alphanumeric source number
  deliverby: "deliverby_example", # String | UTC encoded time to send the SMS
  dlrcb: "dlrcb_example", # String | HTTP or HTTPS callback URL for delivery reports. Timeout for callbacks is set to 30 seconds
  replycb: "replycb_example", # String | HTTP or HTTPS callback URL for replies. Timeout for callbacks is set to 30 seconds
  replyemail: "replyemail_example", # String | Email address to send replies to
  validity: 56, # Integer | Time in minutes to keep the SMS valid for
  cc: "cc_example" # String | 2 character country code <a href='https://en.wikipedia.org/wiki/ISO_3166-2'>ISO 3166-2</a> for formatting local numbers internationally
}

begin
  #Send an SMS
  result = api_instance.send_sms(key, num, msg, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SMSApi->send_sms: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| API Key as generated from the &lt;a href&#x3D;&#39;https://www.smsfusion.com.au/admin/api/&#39;&gt;admin panel&lt;/a&gt; | 
 **num** | [**Array&lt;String&gt;**](String.md)| Comma separated list of phone numbers or &lt;a href&#x3D;&#39;https://www.smsfusion.com.au/help/msisdn/&#39;&gt;MSDISDN&lt;/a&gt;&#39;s | 
 **msg** | **String**| Message content to send | 
 **from** | **String**| MSISDN or vanity alphanumeric source number | [optional] 
 **deliverby** | **String**| UTC encoded time to send the SMS | [optional] 
 **dlrcb** | **String**| HTTP or HTTPS callback URL for delivery reports. Timeout for callbacks is set to 30 seconds | [optional] 
 **replycb** | **String**| HTTP or HTTPS callback URL for replies. Timeout for callbacks is set to 30 seconds | [optional] 
 **replyemail** | **String**| Email address to send replies to | [optional] 
 **validity** | **Integer**| Time in minutes to keep the SMS valid for | [optional] 
 **cc** | **String**| 2 character country code &lt;a href&#x3D;&#39;https://en.wikipedia.org/wiki/ISO_3166-2&#39;&gt;ISO 3166-2&lt;/a&gt; for formatting local numbers internationally | [optional] 

### Return type

[**SMSResult**](SMSResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



