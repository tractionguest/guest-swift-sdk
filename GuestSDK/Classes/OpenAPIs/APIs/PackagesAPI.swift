//
// PackagesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class PackagesAPI {
    /**
     Create package
     
     - parameter packageCreateParams: (body) Parameters for creating a package (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func createPackage(packageCreateParams: PackageCreateParams? = nil, apiResponseQueue: DispatchQueue = GuestSDKAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Package, Error>) -> Void)) {
        createPackageWithRequestBuilder(packageCreateParams: packageCreateParams).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Create package
     - POST /packages
     - Creates a [Package] entity by extracting information about the recipient and carrier from the given image file.
     - parameter packageCreateParams: (body) Parameters for creating a package (optional)
     - returns: RequestBuilder<Package> 
     */
    open class func createPackageWithRequestBuilder(packageCreateParams: PackageCreateParams? = nil) -> RequestBuilder<Package> {
        let path = "/packages"
        let URLString = GuestSDKAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: packageCreateParams)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Package>.Type = GuestSDKAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter packageId: (path)  
     - parameter idempotencyKey: (header) An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func deletePackage(packageId: String, idempotencyKey: String? = nil, apiResponseQueue: DispatchQueue = GuestSDKAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        deletePackageWithRequestBuilder(packageId: packageId, idempotencyKey: idempotencyKey).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     - DELETE /packages/{package_id}
     - Delete a pacakge
     - parameter packageId: (path)  
     - parameter idempotencyKey: (header) An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func deletePackageWithRequestBuilder(packageId: String, idempotencyKey: String? = nil) -> RequestBuilder<Void> {
        var path = "/packages/{package_id}"
        let packageIdPreEscape = "\(APIHelper.mapValueToPathItem(packageId))"
        let packageIdPostEscape = packageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{package_id}", with: packageIdPostEscape, options: .literal, range: nil)
        let URLString = GuestSDKAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "Idempotency-Key": idempotencyKey?.encodeToJSON(),
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = GuestSDKAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get Package
     
     - parameter packageId: (path)  
     - parameter include: (query) A list of comma-separated related models to include  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func getPackage(packageId: String, include: String? = nil, apiResponseQueue: DispatchQueue = GuestSDKAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Package, Error>) -> Void)) {
        getPackageWithRequestBuilder(packageId: packageId, include: include).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get Package
     - GET /packages/{package_id}
     - Gets the details of a single instance of a Package
     - parameter packageId: (path)  
     - parameter include: (query) A list of comma-separated related models to include  (optional)
     - returns: RequestBuilder<Package> 
     */
    open class func getPackageWithRequestBuilder(packageId: String, include: String? = nil) -> RequestBuilder<Package> {
        var path = "/packages/{package_id}"
        let packageIdPreEscape = "\(APIHelper.mapValueToPathItem(packageId))"
        let packageIdPostEscape = packageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{package_id}", with: packageIdPostEscape, options: .literal, range: nil)
        let URLString = GuestSDKAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "include": include?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Package>.Type = GuestSDKAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get packages
     
     - parameter locationIds: (query) A comma separated list of Location ids for filtering. i.e. &#39;1,2,3&#39; Will return all packages from all locations if none are specified (optional)
     - parameter limit: (query) Limits the results to a specified number, defaults to 50 (optional, default to 50)
     - parameter offset: (query) Offsets the results to a specified number, defaults to 0 (optional, default to 0)
     - parameter include: (query) A list of comma-separated related models to include. Possible values: &#39;recipient&#39;, &#39;location&#39;, &#39;image&#39; (optional)
     - parameter pickedUp: (query) Filters packages by their \&quot;picked_up\&quot; state.. (optional)
     - parameter query: (query) Searches for packages by recipient name (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func getPackages(locationIds: String? = nil, limit: Int? = nil, offset: Int? = nil, include: String? = nil, pickedUp: Bool? = nil, query: String? = nil, apiResponseQueue: DispatchQueue = GuestSDKAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<PaginatedPackagesList, Error>) -> Void)) {
        getPackagesWithRequestBuilder(locationIds: locationIds, limit: limit, offset: offset, include: include, pickedUp: pickedUp, query: query).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get packages
     - GET /packages
     - Gets a list of [Package] entities.
     - parameter locationIds: (query) A comma separated list of Location ids for filtering. i.e. &#39;1,2,3&#39; Will return all packages from all locations if none are specified (optional)
     - parameter limit: (query) Limits the results to a specified number, defaults to 50 (optional, default to 50)
     - parameter offset: (query) Offsets the results to a specified number, defaults to 0 (optional, default to 0)
     - parameter include: (query) A list of comma-separated related models to include. Possible values: &#39;recipient&#39;, &#39;location&#39;, &#39;image&#39; (optional)
     - parameter pickedUp: (query) Filters packages by their \&quot;picked_up\&quot; state.. (optional)
     - parameter query: (query) Searches for packages by recipient name (optional)
     - returns: RequestBuilder<PaginatedPackagesList> 
     */
    open class func getPackagesWithRequestBuilder(locationIds: String? = nil, limit: Int? = nil, offset: Int? = nil, include: String? = nil, pickedUp: Bool? = nil, query: String? = nil) -> RequestBuilder<PaginatedPackagesList> {
        let path = "/packages"
        let URLString = GuestSDKAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "location_ids": locationIds?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "offset": offset?.encodeToJSON(),
            "include": include?.encodeToJSON(),
            "picked_up": pickedUp?.encodeToJSON(),
            "query": query?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<PaginatedPackagesList>.Type = GuestSDKAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Update Package
     
     - parameter packageId: (path)  
     - parameter idempotencyKey: (header) An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored (optional)
     - parameter packageUpdateParams: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func updatePackage(packageId: String, idempotencyKey: String? = nil, packageUpdateParams: PackageUpdateParams? = nil, apiResponseQueue: DispatchQueue = GuestSDKAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Package, Error>) -> Void)) {
        updatePackageWithRequestBuilder(packageId: packageId, idempotencyKey: idempotencyKey, packageUpdateParams: packageUpdateParams).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Update Package
     - PUT /packages/{package_id}
     - Update/Edit information about a Package.  picked_up - changes the package_state to picked up and assigns non null value to picked_up_at  recipient_id - update the package's intended recipient. Changes package_state to 'recipient_matched' if a match hasn't been found and notifies host about their package via email. A previous recipient will stop getting notifications  carrier_name - change/update the package's carrier/courier information 
     - parameter packageId: (path)  
     - parameter idempotencyKey: (header) An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored (optional)
     - parameter packageUpdateParams: (body)  (optional)
     - returns: RequestBuilder<Package> 
     */
    open class func updatePackageWithRequestBuilder(packageId: String, idempotencyKey: String? = nil, packageUpdateParams: PackageUpdateParams? = nil) -> RequestBuilder<Package> {
        var path = "/packages/{package_id}"
        let packageIdPreEscape = "\(APIHelper.mapValueToPathItem(packageId))"
        let packageIdPostEscape = packageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{package_id}", with: packageIdPostEscape, options: .literal, range: nil)
        let URLString = GuestSDKAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: packageUpdateParams)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "Idempotency-Key": idempotencyKey?.encodeToJSON(),
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Package>.Type = GuestSDKAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
