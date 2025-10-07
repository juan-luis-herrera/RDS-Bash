# SloApi

All URIs are relative to */v0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sloDescribe**](SloApi.md#sloDescribe) | **GET** /slos/{sloId}/description | Describe SLO.
[**sloDiscover**](SloApi.md#sloDiscover) | **GET** /slos | Discover SLOs.
[**sloValue**](SloApi.md#sloValue) | **GET** /slos/{sloId} | SLO value.



## sloDescribe

Describe SLO.

Returns the description of the requested SLO.

### Example

```bash
serviceapi sloDescribe sloId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sloId** | **string** | ID of SLO to describe | [default to null]

### Return type

[**SLO**](SLO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## sloDiscover

Discover SLOs.

Returns the list of declared SLOs of the service.

### Example

```bash
serviceapi sloDiscover
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


## sloValue

SLO value.

Returns the current value of the requested SLO.

### Example

```bash
serviceapi sloValue sloId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sloId** | **string** | ID of SLO to describe | [default to null]

### Return type

[**SLOValue**](SLOValue.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

