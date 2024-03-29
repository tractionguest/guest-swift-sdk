# Swift5 API client for GuestSDK

The Traction Guest API is currently under limited release to select customers as we gather and iterate on feedback.

# Getting Started
If you are interested in getting early access to the API, please send us an email to [support@tractionguest.com](mailto:support@tractionguest.com).

We will also add you to our Slack channel where you can ask questions and get further help.

# Terms and Conditions
Please visit: [https://tractionguest.com/tos/api/](https://tractionguest.com/tos/api/)

# Versioning
This API follows [semantic versioning](https://semver.org/), which follows the `Major`.`Minor`.`Patch` format.

* The `Major` number increments when potentially incompatible changes are made.
* The `Minor` number increments when backwards-compatible additions are made.
* The `Patch` number increments when backwards-compatible bug-fixes are made.


## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec from a remote server, you can easily generate an API client.

- API version: 0.17.0
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen
For more information, please visit [https://tractionguest.com](https://tractionguest.com)

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *https://us.tractionguest.com/api/v3*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AuditLogsAPI* | [**getAuditLog**](docs/AuditLogsAPI.md#getauditlog) | **GET** /audit_logs/{audit_log_id} | Get an AuditLog
*AuditLogsAPI* | [**getAuditLogs**](docs/AuditLogsAPI.md#getauditlogs) | **GET** /audit_logs | List all AuditLogs
*BatchesAPI* | [**batchDeleteInvites**](docs/BatchesAPI.md#batchdeleteinvites) | **POST** /invites/batch_delete | Delete Multiple Invites
*BatchesAPI* | [**getBatch**](docs/BatchesAPI.md#getbatch) | **GET** /batches/{batch_id} | Get a BatchJob
*CapacitiesAPI* | [**getCapacity**](docs/CapacitiesAPI.md#getcapacity) | **GET** /locations/{location_id}/capacities | Get the current capacity details for a location
*CapacitiesAPI* | [**getCapacityForecast**](docs/CapacitiesAPI.md#getcapacityforecast) | **GET** /locations/{location_id}/capacity_forecasts | Get the capacity details for a location
*EmailTemplatesAPI* | [**getEmailTemplates**](docs/EmailTemplatesAPI.md#getemailtemplates) | **GET** /email_templates | List all EmailTemplates
*GroupVisitsAPI* | [**createGroupVisit**](docs/GroupVisitsAPI.md#creategroupvisit) | **POST** /group_visits | Create a new Group Visit (Appointment)
*GroupVisitsAPI* | [**deleteGroupVisit**](docs/GroupVisitsAPI.md#deletegroupvisit) | **DELETE** /group_visits/{group_visit_id} | Delete a Group Visit (Appointment)
*GroupVisitsAPI* | [**getGroupVisit**](docs/GroupVisitsAPI.md#getgroupvisit) | **GET** /group_visits/{group_visit_id} | Get a Group Visit (Appointment)
*GroupVisitsAPI* | [**getGroupVisits**](docs/GroupVisitsAPI.md#getgroupvisits) | **GET** /group_visits | List all Group Visits (Appointments)
*GroupVisitsAPI* | [**updateGroupVisit**](docs/GroupVisitsAPI.md#updategroupvisit) | **PUT** /group_visits/{group_visit_id} | Update a Group Visit (Appointment)
*HostsAPI* | [**createHost**](docs/HostsAPI.md#createhost) | **POST** /hosts | Create a Host
*HostsAPI* | [**createHosts**](docs/HostsAPI.md#createhosts) | **POST** /hosts/batch | Create multiple Hosts
*HostsAPI* | [**getHosts**](docs/HostsAPI.md#gethosts) | **GET** /hosts | List all Hosts
*InvitesAPI* | [**batchDeleteInvites**](docs/InvitesAPI.md#batchdeleteinvites) | **POST** /invites/batch_delete | Delete Multiple Invites
*InvitesAPI* | [**createLocationInvite**](docs/InvitesAPI.md#createlocationinvite) | **POST** /locations/{location_id}/invites | Create an Invite
*InvitesAPI* | [**createRegistrationInvite**](docs/InvitesAPI.md#createregistrationinvite) | **POST** /registrations/{registration_id}/invites | Create an Invite from a Registration
*InvitesAPI* | [**deleteInvite**](docs/InvitesAPI.md#deleteinvite) | **DELETE** /invites/{invite_id} | Deletes an Invite
*InvitesAPI* | [**getInvite**](docs/InvitesAPI.md#getinvite) | **GET** /invites/{invite_id} | Get an Invite
*InvitesAPI* | [**getInvites**](docs/InvitesAPI.md#getinvites) | **GET** /invites | List all Invites
*InvitesAPI* | [**updateInvite**](docs/InvitesAPI.md#updateinvite) | **PUT** /invites/{invite_id} | Update an Invite
*LocationsAPI* | [**getLocation**](docs/LocationsAPI.md#getlocation) | **GET** /locations/{location_id} | Get the details of a location
*LocationsAPI* | [**getLocations**](docs/LocationsAPI.md#getlocations) | **GET** /locations | List all Locations
*PackagesAPI* | [**createPackage**](docs/PackagesAPI.md#createpackage) | **POST** /packages | Create package
*PackagesAPI* | [**deletePackage**](docs/PackagesAPI.md#deletepackage) | **DELETE** /packages/{package_id} | 
*PackagesAPI* | [**getPackage**](docs/PackagesAPI.md#getpackage) | **GET** /packages/{package_id} | Get Package
*PackagesAPI* | [**getPackages**](docs/PackagesAPI.md#getpackages) | **GET** /packages | Get packages
*PackagesAPI* | [**updatePackage**](docs/PackagesAPI.md#updatepackage) | **PUT** /packages/{package_id} | Update Package
*RegistrationsAPI* | [**getRegistration**](docs/RegistrationsAPI.md#getregistration) | **GET** /registrations/{registration_id} | Get a Registration
*RegistrationsAPI* | [**getRegistrations**](docs/RegistrationsAPI.md#getregistrations) | **GET** /registrations | List all Registrations
*SigninsAPI* | [**createSignin**](docs/SigninsAPI.md#createsignin) | **POST** /signins | Create Signin
*SigninsAPI* | [**getSignin**](docs/SigninsAPI.md#getsignin) | **GET** /signins/{signin_id} | Get a Signin
*SigninsAPI* | [**getSignins**](docs/SigninsAPI.md#getsignins) | **GET** /signins | List all Signins
*SigninsAPI* | [**updateSignin**](docs/SigninsAPI.md#updatesignin) | **PUT** /signins/{signin_id} | Update a Signin
*UsersAPI* | [**getCurrentUser**](docs/UsersAPI.md#getcurrentuser) | **GET** /users/{user_id} | Get the current User
*WatchlistsAPI* | [**createWatchlist**](docs/WatchlistsAPI.md#createwatchlist) | **POST** /watchlists | Create Watchlist
*WatchlistsAPI* | [**deleteWatchlist**](docs/WatchlistsAPI.md#deletewatchlist) | **DELETE** /watchlists/{watchlist_id} | Deletes a Watchlist
*WatchlistsAPI* | [**getWatchlist**](docs/WatchlistsAPI.md#getwatchlist) | **GET** /watchlists/{watchlist_id} | Get a Watchlist
*WatchlistsAPI* | [**getWatchlists**](docs/WatchlistsAPI.md#getwatchlists) | **GET** /watchlists | List all Watchlists
*WatchlistsAPI* | [**updateWatchlist**](docs/WatchlistsAPI.md#updatewatchlist) | **PUT** /watchlists/{watchlist_id} | Update a Watchlist


## Documentation For Models

 - [AuditLog](docs/AuditLog.md)
 - [AuditLogChange](docs/AuditLogChange.md)
 - [BatchJob](docs/BatchJob.md)
 - [Capacity](docs/Capacity.md)
 - [CapacityByHourResponse](docs/CapacityByHourResponse.md)
 - [CapacityForecast](docs/CapacityForecast.md)
 - [CustomField](docs/CustomField.md)
 - [Docusign](docs/Docusign.md)
 - [EmailTemplate](docs/EmailTemplate.md)
 - [ErrorsList](docs/ErrorsList.md)
 - [ExternalWatchlistResult](docs/ExternalWatchlistResult.md)
 - [GroupVisit](docs/GroupVisit.md)
 - [GroupVisitCreateParams](docs/GroupVisitCreateParams.md)
 - [GroupVisitUpdateParams](docs/GroupVisitUpdateParams.md)
 - [GuestResponse](docs/GuestResponse.md)
 - [Host](docs/Host.md)
 - [HostBatchCreateParams](docs/HostBatchCreateParams.md)
 - [HostCreateParams](docs/HostCreateParams.md)
 - [IdentifierList](docs/IdentifierList.md)
 - [Image](docs/Image.md)
 - [InternalWatchlistResult](docs/InternalWatchlistResult.md)
 - [Invite](docs/Invite.md)
 - [InviteCreateParams](docs/InviteCreateParams.md)
 - [InviteDetail](docs/InviteDetail.md)
 - [InviteUpdateParams](docs/InviteUpdateParams.md)
 - [InviteWatchlist](docs/InviteWatchlist.md)
 - [Location](docs/Location.md)
 - [ModelError](docs/ModelError.md)
 - [NotificationTrigger](docs/NotificationTrigger.md)
 - [NotificationTriggerCreateParams](docs/NotificationTriggerCreateParams.md)
 - [Package](docs/Package.md)
 - [PackageCreateParams](docs/PackageCreateParams.md)
 - [PackageUpdateParams](docs/PackageUpdateParams.md)
 - [PaginatedAuditLogsList](docs/PaginatedAuditLogsList.md)
 - [PaginatedEmailTemplatesList](docs/PaginatedEmailTemplatesList.md)
 - [PaginatedGroupVisitsList](docs/PaginatedGroupVisitsList.md)
 - [PaginatedHostsList](docs/PaginatedHostsList.md)
 - [PaginatedInvitesList](docs/PaginatedInvitesList.md)
 - [PaginatedLocationsList](docs/PaginatedLocationsList.md)
 - [PaginatedPackagesList](docs/PaginatedPackagesList.md)
 - [PaginatedRegistrationsList](docs/PaginatedRegistrationsList.md)
 - [PaginatedSigninsList](docs/PaginatedSigninsList.md)
 - [PaginatedWatchlistList](docs/PaginatedWatchlistList.md)
 - [Pagination](docs/Pagination.md)
 - [PermissionGroup](docs/PermissionGroup.md)
 - [Registration](docs/Registration.md)
 - [RegistrationDetail](docs/RegistrationDetail.md)
 - [SignableDocument](docs/SignableDocument.md)
 - [Signin](docs/Signin.md)
 - [SigninAcknowledgement](docs/SigninAcknowledgement.md)
 - [SigninCreateParams](docs/SigninCreateParams.md)
 - [SigninData](docs/SigninData.md)
 - [SigninDetail](docs/SigninDetail.md)
 - [SigninUpdateParams](docs/SigninUpdateParams.md)
 - [SigninWatchlist](docs/SigninWatchlist.md)
 - [SimpleSignature](docs/SimpleSignature.md)
 - [User](docs/User.md)
 - [Visitor](docs/Visitor.md)
 - [Watchlist](docs/Watchlist.md)
 - [WatchlistCreateParams](docs/WatchlistCreateParams.md)
 - [WatchlistMatch](docs/WatchlistMatch.md)
 - [WatchlistSearch](docs/WatchlistSearch.md)


## Documentation For Authorization


## TractionGuestAuth



## Author

support@tractionguest.com

