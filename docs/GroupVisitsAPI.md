# GroupVisitsAPI

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGroupVisit**](GroupVisitsAPI.md#creategroupvisit) | **POST** /group_visits | Create a new Group Visit (Appointment)
[**deleteGroupVisit**](GroupVisitsAPI.md#deletegroupvisit) | **DELETE** /group_visits/{group_visit_id} | Delete a Group Visit (Appointment)
[**getGroupVisit**](GroupVisitsAPI.md#getgroupvisit) | **GET** /group_visits/{group_visit_id} | Get a Group Visit (Appointment)
[**getGroupVisits**](GroupVisitsAPI.md#getgroupvisits) | **GET** /group_visits | List all Group Visits (Appointments)
[**updateGroupVisit**](GroupVisitsAPI.md#updategroupvisit) | **PUT** /group_visits/{group_visit_id} | Update a Group Visit (Appointment)


# **createGroupVisit**
```swift
    open class func createGroupVisit(idempotencyKey: String? = nil, groupVisitCreateParams: GroupVisitCreateParams? = nil, completion: @escaping (_ data: GroupVisit?, _ error: Error?) -> Void)
```

Create a new Group Visit (Appointment)

Creates a `GroupVisit` (Appointment)

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let idempotencyKey = "idempotencyKey_example" // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)
let groupVisitCreateParams = GroupVisitCreateParams(name: "name_example", startTime: "startTime_example", endTime: "endTime_example", locationId: 123, registrationLimit: 123, manualRegistrationApproval: false, publicRegistrationEnabled: false, hostIds: [123]) // GroupVisitCreateParams |  (optional)

// Create a new Group Visit (Appointment)
GroupVisitsAPI.createGroupVisit(idempotencyKey: idempotencyKey, groupVisitCreateParams: groupVisitCreateParams) { (response, error) in
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
 **idempotencyKey** | **String** | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] 
 **groupVisitCreateParams** | [**GroupVisitCreateParams**](GroupVisitCreateParams.md) |  | [optional] 

### Return type

[**GroupVisit**](GroupVisit.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroupVisit**
```swift
    open class func deleteGroupVisit(groupVisitId: String, idempotencyKey: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a Group Visit (Appointment)

Deletes a single instance of `GroupVisit` (Appointment).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let groupVisitId = "groupVisitId_example" // String | 
let idempotencyKey = "idempotencyKey_example" // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)

// Delete a Group Visit (Appointment)
GroupVisitsAPI.deleteGroupVisit(groupVisitId: groupVisitId, idempotencyKey: idempotencyKey) { (response, error) in
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
 **groupVisitId** | **String** |  | 
 **idempotencyKey** | **String** | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] 

### Return type

Void (empty response body)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupVisit**
```swift
    open class func getGroupVisit(groupVisitId: String, completion: @escaping (_ data: GroupVisit?, _ error: Error?) -> Void)
```

Get a Group Visit (Appointment)

Gets the details of a single instance of a `GroupVisit`.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let groupVisitId = "groupVisitId_example" // String | 

// Get a Group Visit (Appointment)
GroupVisitsAPI.getGroupVisit(groupVisitId: groupVisitId) { (response, error) in
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
 **groupVisitId** | **String** |  | 

### Return type

[**GroupVisit**](GroupVisit.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupVisits**
```swift
    open class func getGroupVisits(limit: String? = nil, offset: String? = nil, locationIds: String? = nil, sortWith: String? = nil, completion: @escaping (_ data: PaginatedGroupVisitsList?, _ error: Error?) -> Void)
```

List all Group Visits (Appointments)

Gets a list of all `GroupVisit` entities (Appointments).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let limit = "limit_example" // String | Limits the results to a specified number. Defaults to 50. (optional)
let offset = "offset_example" // String | Offsets the results to a specified number. Defaults to 0. (optional)
let locationIds = "locationIds_example" // String | A comma-separated string of locations IDs, to only show group visits (appointments) from those locations. (optional)
let sortWith = "sortWith_example" // String | A combination of attribute and direction, joined with an underscore, for sorting. Valid attributes are: `created_at`, `updated_at`, `name`, and `start_time`. Valid directions are `asc` and `desc`. E.g., `name_desc`, `start_time_asc`. (optional)

// List all Group Visits (Appointments)
GroupVisitsAPI.getGroupVisits(limit: limit, offset: offset, locationIds: locationIds, sortWith: sortWith) { (response, error) in
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
 **limit** | **String** | Limits the results to a specified number. Defaults to 50. | [optional] 
 **offset** | **String** | Offsets the results to a specified number. Defaults to 0. | [optional] 
 **locationIds** | **String** | A comma-separated string of locations IDs, to only show group visits (appointments) from those locations. | [optional] 
 **sortWith** | **String** | A combination of attribute and direction, joined with an underscore, for sorting. Valid attributes are: &#x60;created_at&#x60;, &#x60;updated_at&#x60;, &#x60;name&#x60;, and &#x60;start_time&#x60;. Valid directions are &#x60;asc&#x60; and &#x60;desc&#x60;. E.g., &#x60;name_desc&#x60;, &#x60;start_time_asc&#x60;. | [optional] 

### Return type

[**PaginatedGroupVisitsList**](PaginatedGroupVisitsList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGroupVisit**
```swift
    open class func updateGroupVisit(groupVisitId: String, idempotencyKey: String? = nil, groupVisitUpdateParams: GroupVisitUpdateParams? = nil, completion: @escaping (_ data: GroupVisit?, _ error: Error?) -> Void)
```

Update a Group Visit (Appointment)

Updates an existing `GroupVisit` (Appointment).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let groupVisitId = "groupVisitId_example" // String | 
let idempotencyKey = "idempotencyKey_example" // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)
let groupVisitUpdateParams = GroupVisitUpdateParams(name: "name_example", startTime: "startTime_example", endTime: "endTime_example", locationId: 123, registrationLimit: 123, manualRegistrationApproval: false, publicRegistrationEnabled: false, hostIds: [123], inviteIds: [123], refreshRegistrationUrl: false) // GroupVisitUpdateParams |  (optional)

// Update a Group Visit (Appointment)
GroupVisitsAPI.updateGroupVisit(groupVisitId: groupVisitId, idempotencyKey: idempotencyKey, groupVisitUpdateParams: groupVisitUpdateParams) { (response, error) in
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
 **groupVisitId** | **String** |  | 
 **idempotencyKey** | **String** | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] 
 **groupVisitUpdateParams** | [**GroupVisitUpdateParams**](GroupVisitUpdateParams.md) |  | [optional] 

### Return type

[**GroupVisit**](GroupVisit.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

