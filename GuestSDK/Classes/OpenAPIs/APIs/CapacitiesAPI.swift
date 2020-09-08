//
// CapacitiesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class CapacitiesAPI {
    /**
     Get the current capacity details for a location
     
     - parameter locationId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func getCapacity(locationId: String, apiResponseQueue: DispatchQueue = GuestSDKAPI.apiResponseQueue, completion: @escaping ((_ result: Result<Capacity, Error>) -> Void)) {
        getCapacityWithRequestBuilder(locationId: locationId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get the current capacity details for a location
     - GET /locations/{location_id}/capacities
     - Get details of current capacity in a location
     - :
       - type: openIdConnect
       - name: TractionGuestAuth
     - parameter locationId: (path)  
     - returns: RequestBuilder<Capacity> 
     */
    open class func getCapacityWithRequestBuilder(locationId: String) -> RequestBuilder<Capacity> {
        var path = "/locations/{location_id}/capacities"
        let locationIdPreEscape = "\(APIHelper.mapValueToPathItem(locationId))"
        let locationIdPostEscape = locationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{location_id}", with: locationIdPostEscape, options: .literal, range: nil)
        let URLString = GuestSDKAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Capacity>.Type = GuestSDKAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get the capacity details for a location
     
     - parameter locationId: (path)  
     - parameter hoursToForecast: (query) The next N number of hours, the data needs to be calculated. Range from 1 to 24. If not set, it defaults to 8. (optional, default to 8)
     - parameter timestamp: (query) ISO8601 timestamp(includes the offset value) to use as the start point for the capacity estimate report. Defaults to the current local timestamp of the location if not provided. Eg: \&quot;2020-07-16T17:05:08-07:00\&quot; (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func getCapacityForecast(locationId: String, hoursToForecast: Int? = nil, timestamp: String? = nil, apiResponseQueue: DispatchQueue = GuestSDKAPI.apiResponseQueue, completion: @escaping ((_ result: Result<CapacityForecast, Error>) -> Void)) {
        getCapacityForecastWithRequestBuilder(locationId: locationId, hoursToForecast: hoursToForecast, timestamp: timestamp).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get the capacity details for a location
     - GET /locations/{location_id}/capacity_forecasts
     - Gets the details of the future capacity in a location.
     - :
       - type: openIdConnect
       - name: TractionGuestAuth
     - parameter locationId: (path)  
     - parameter hoursToForecast: (query) The next N number of hours, the data needs to be calculated. Range from 1 to 24. If not set, it defaults to 8. (optional, default to 8)
     - parameter timestamp: (query) ISO8601 timestamp(includes the offset value) to use as the start point for the capacity estimate report. Defaults to the current local timestamp of the location if not provided. Eg: \&quot;2020-07-16T17:05:08-07:00\&quot; (optional)
     - returns: RequestBuilder<CapacityForecast> 
     */
    open class func getCapacityForecastWithRequestBuilder(locationId: String, hoursToForecast: Int? = nil, timestamp: String? = nil) -> RequestBuilder<CapacityForecast> {
        var path = "/locations/{location_id}/capacity_forecasts"
        let locationIdPreEscape = "\(APIHelper.mapValueToPathItem(locationId))"
        let locationIdPostEscape = locationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{location_id}", with: locationIdPostEscape, options: .literal, range: nil)
        let URLString = GuestSDKAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "hours_to_forecast": hoursToForecast?.encodeToJSON(), 
            "timestamp": timestamp?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<CapacityForecast>.Type = GuestSDKAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}