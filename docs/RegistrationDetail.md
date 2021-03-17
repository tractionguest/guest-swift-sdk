# RegistrationDetail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Registration unique identifier | 
**visitor** | [**Visitor**](Visitor.md) |  | [optional] 
**invite** | [**Invite**](Invite.md) |  | [optional] 
**guestResponses** | [GuestResponse] | Response given by the guest | [optional] 
**photoUrl** | **String** | URL of the uploaded photo | [optional] 
**company** | **String** | Company&#39;s name | [optional] 
**email** | **String** | E-mail | [optional] 
**name** | **String** | Guest&#39;s name | [optional] 
**createdAt** | **Date** | Datetime when registration was created | 
**signin** | [**Signin**](Signin.md) |  | [optional] 
**status** | **String** | An enum describing the state of the &#x60;Registration&#x60; which can have one of the following: not_started, started, completed, rejected, signed_in signed_out | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


