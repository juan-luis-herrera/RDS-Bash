# SloApi

All URIs are relative to */v0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sloDiscover**](SloApi.md#sloDiscover) | **GET** /slos | Discover, describe, and gather values of SLOs.
[**sloGet**](SloApi.md#sloGet) | **GET** /slos/{sloId} | Describe and gather value of an SLO.



## sloDiscover

Discover, describe, and gather values of SLOs.

Returns the list of declared SLOs of the service with their definitions and current values

### Example

```bash
serviceapi sloDiscover
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[SLO]**](SLO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## sloGet

Describe and gather value of an SLO.

Returns the description and current value of the requested SLO.

### Example

```bash
serviceapi sloGet sloId=value
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

