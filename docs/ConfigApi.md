# ConfigApi

All URIs are relative to */v0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**configChange**](ConfigApi.md#configChange) | **PUT** /config/{confParam} | Change parameter.
[**configDiscover**](ConfigApi.md#configDiscover) | **GET** /config | Discover, describe, and gather configuration.
[**configGet**](ConfigApi.md#configGet) | **GET** /config/{confParam} | Parameter value.



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
 **confParamChange** | [**ConfParamChange**](ConfParamChange.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## configDiscover

Discover, describe, and gather configuration.

Returns the list of configurable service parameters with their definitions and current values.

### Example

```bash
serviceapi configDiscover
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[ConfParam]**](ConfParam.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## configGet

Parameter value.

Returns the description and current value of the requested parameter.

### Example

```bash
serviceapi configGet confParam=value
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

