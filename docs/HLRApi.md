# SwaggerClient::HLRApi

All URIs are relative to *https://api.smsfusion.com.au/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_hlr**](HLRApi.md#get_hlr) | **GET** /hlr/ | HLR number lookup
[**get_hlr_callback**](HLRApi.md#get_hlr_callback) | **GET** /hlr-callback/ | HLR number lookup with results going to a callback URL


# **get_hlr**
> HLRCallback get_hlr(key, num, opts)

HLR number lookup

Perform HLR on number

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

api_instance = SwaggerClient::HLRApi.new

key = "key_example" # String | API Key as generated from the <a href='https://www.smsfusion.com.au/admin/api/'>admin panel</a>

num = "num_example" # String | A single phone number or <a href='https://www.smsfusion.com.au/help/msisdn/'>MSDISDN</a>

opts = { 
  cc: "cc_example" # String | 2 character country code <a href='https://en.wikipedia.org/wiki/ISO_3166-2'>ISO 3166-2</a> for formatting local numbers internationally
}

begin
  #HLR number lookup
  result = api_instance.get_hlr(key, num, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling HLRApi->get_hlr: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| API Key as generated from the &lt;a href&#x3D;&#39;https://www.smsfusion.com.au/admin/api/&#39;&gt;admin panel&lt;/a&gt; | 
 **num** | **String**| A single phone number or &lt;a href&#x3D;&#39;https://www.smsfusion.com.au/help/msisdn/&#39;&gt;MSDISDN&lt;/a&gt; | 
 **cc** | **String**| 2 character country code &lt;a href&#x3D;&#39;https://en.wikipedia.org/wiki/ISO_3166-2&#39;&gt;ISO 3166-2&lt;/a&gt; for formatting local numbers internationally | [optional] 

### Return type

[**HLRCallback**](HLRCallback.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_hlr_callback**
> HLRResult get_hlr_callback(key, num, cb, opts)

HLR number lookup with results going to a callback URL

Perform HLR on number with the result being sent to the callback URL provided

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

api_instance = SwaggerClient::HLRApi.new

key = "key_example" # String | API Key as generated from the <a href='https://www.smsfusion.com.au/admin/api/'>admin panel</a>

num = ["num_example"] # Array<String> | Comma separated list of phone numbers or <a href='https://www.smsfusion.com.au/help/msisdn/'>MSDISDN</a>'s

cb = "cb_example" # String | HTTP or HTTPS callback URL for each result. The result will be sent as POST with a json object included in <b>result</b>. Timeout for callbacks is set to 30 seconds

opts = { 
  cc: "cc_example" # String | 2 character country code <a href='https://en.wikipedia.org/wiki/ISO_3166-2'>ISO 3166-2</a> for formatting local numbers internationally
}

begin
  #HLR number lookup with results going to a callback URL
  result = api_instance.get_hlr_callback(key, num, cb, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling HLRApi->get_hlr_callback: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| API Key as generated from the &lt;a href&#x3D;&#39;https://www.smsfusion.com.au/admin/api/&#39;&gt;admin panel&lt;/a&gt; | 
 **num** | [**Array&lt;String&gt;**](String.md)| Comma separated list of phone numbers or &lt;a href&#x3D;&#39;https://www.smsfusion.com.au/help/msisdn/&#39;&gt;MSDISDN&lt;/a&gt;&#39;s | 
 **cb** | **String**| HTTP or HTTPS callback URL for each result. The result will be sent as POST with a json object included in &lt;b&gt;result&lt;/b&gt;. Timeout for callbacks is set to 30 seconds | 
 **cc** | **String**| 2 character country code &lt;a href&#x3D;&#39;https://en.wikipedia.org/wiki/ISO_3166-2&#39;&gt;ISO 3166-2&lt;/a&gt; for formatting local numbers internationally | [optional] 

### Return type

[**HLRResult**](HLRResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



