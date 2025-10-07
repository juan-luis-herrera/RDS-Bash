# ConfigApi

All URIs are relative to */v0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**configChange**](ConfigApi.md#configChange) | **PUT** /config/{confParam} | Change parameter.
[**configDescribe**](ConfigApi.md#configDescribe) | **GET** /config/{confParam}/description | Describe configurable parameter.
[**configDiscover**](ConfigApi.md#configDiscover) | **GET** /config | Discover configuration.
[**configValue**](ConfigApi.md#configValue) | **GET** /config/{confParam} | Parameter value.



## configChange

Change parameter.

Changes the value of the requested parameter.

### Example

```bash
serviceapi configChange confParam=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **confParam** | **string** | Name of the parameter to describe | [default to null]
 **confParamValue** | [**ConfParamValue**](ConfParamValue.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## configDescribe

Describe configurable parameter.

Returns the description of the requested parameter.

### Example

```bash
serviceapi configDescribe confParam=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **confParam** | **string** | Name of the parameter to describe | [default to null]

### Return type

[**ConfParam**](ConfParam.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## configDiscover

Discover configuration.

Returns the list of configurable service parameters.

### Example

```bash
serviceapi configDiscover
```

### Parameters

This endpoint does not need any parameter.

### Return type

**array[string]**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## configValue

Parameter value.

Returns the current value of the requested parameter.

### Example

```bash
serviceapi configValue confParam=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **confParam** | **string** | Name of the parameter to describe | [default to null]

### Return type

[**ConfParamValue**](ConfParamValue.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

