# RegistrationsAPI

All URIs are relative to *https://us.tractionguest.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRegistration**](RegistrationsAPI.md#getregistration) | **GET** /registrations/{registration_id} | Get a Registration
[**getRegistrations**](RegistrationsAPI.md#getregistrations) | **GET** /registrations | List all Registrations


# **getRegistration**
```swift
    open class func getRegistration(registrationId: String, include: String? = nil, completion: @escaping (_ data: RegistrationDetail?, _ error: Error?) -> Void)
```

Get a Registration

Gets the details of a single instance of a `Registration`

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let registrationId = "registrationId_example" // String | 
let include = "include_example" // String | A list of comma-separated related models to include (optional)

// Get a Registration
RegistrationsAPI.getRegistration(registrationId: registrationId, include: include) { (response, error) in
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
 **registrationId** | **String** |  | 
 **include** | **String** | A list of comma-separated related models to include | [optional] 

### Return type

[**RegistrationDetail**](RegistrationDetail.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRegistrations**
```swift
    open class func getRegistrations(limit: Int? = nil, offset: Int? = nil, locationIds: String? = nil, createdBefore: String? = nil, createdAfter: String? = nil, needsConfirmation: Bool? = nil, completion: @escaping (_ data: PaginatedRegistrationsList?, _ error: Error?) -> Void)
```

List all Registrations

Gets a list of all `Registration` entities.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let limit = 987 // Int | Limits the results to a specified number, defaults to 50 (optional)
let offset = 987 // Int | Offsets the results to a specified number, defaults to 0 (optional)
let locationIds = "locationIds_example" // String | A comma separated list of Location IDs (optional)
let createdBefore = "createdBefore_example" // String | Restricts results to only those that were created before the provided date (optional)
let createdAfter = "createdAfter_example" // String | Restricts results to only those that were created after the provided date (optional)
let needsConfirmation = true // Bool | A confirmed `Registration` is one with an associated `Invite`. This filter returns those without an `Invite` when true, and those with an `Invite` when false. (optional)

// List all Registrations
RegistrationsAPI.getRegistrations(limit: limit, offset: offset, locationIds: locationIds, createdBefore: createdBefore, createdAfter: createdAfter, needsConfirmation: needsConfirmation) { (response, error) in
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
 **limit** | **Int** | Limits the results to a specified number, defaults to 50 | [optional] 
 **offset** | **Int** | Offsets the results to a specified number, defaults to 0 | [optional] 
 **locationIds** | **String** | A comma separated list of Location IDs | [optional] 
 **createdBefore** | **String** | Restricts results to only those that were created before the provided date | [optional] 
 **createdAfter** | **String** | Restricts results to only those that were created after the provided date | [optional] 
 **needsConfirmation** | **Bool** | A confirmed &#x60;Registration&#x60; is one with an associated &#x60;Invite&#x60;. This filter returns those without an &#x60;Invite&#x60; when true, and those with an &#x60;Invite&#x60; when false. | [optional] 

### Return type

[**PaginatedRegistrationsList**](PaginatedRegistrationsList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

