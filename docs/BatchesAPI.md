# BatchesAPI

All URIs are relative to *https://us.tractionguest.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batchDeleteInvites**](BatchesAPI.md#batchdeleteinvites) | **POST** /invites/batch_delete | Delete Multiple Invites
[**getBatch**](BatchesAPI.md#getbatch) | **GET** /batches/{batch_id} | Get a BatchJob


# **batchDeleteInvites**
```swift
    open class func batchDeleteInvites(identifierList: IdentifierList? = nil, completion: @escaping (_ data: BatchJob?, _ error: Error?) -> Void)
```

Delete Multiple Invites

Queues up a \"delete\" background task for one or more `Invite` entities.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let identifierList = IdentifierList(ids: ["ids_example"]) // IdentifierList |  (optional)

// Delete Multiple Invites
BatchesAPI.batchDeleteInvites(identifierList: identifierList) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifierList** | [**IdentifierList**](IdentifierList.md) |  | [optional] 

### Return type

[**BatchJob**](BatchJob.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBatch**
```swift
    open class func getBatch(batchId: String, completion: @escaping (_ data: BatchJob?, _ error: Error?) -> Void)
```

Get a BatchJob

Retrieve a given `BatchJob` entity.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let batchId = "batchId_example" // String | 

// Get a BatchJob
BatchesAPI.getBatch(batchId: batchId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batchId** | **String** |  | 

### Return type

[**BatchJob**](BatchJob.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

