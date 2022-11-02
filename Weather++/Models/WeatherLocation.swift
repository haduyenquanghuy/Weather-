//
//  WeatherLocation.swift
//  Weather++
//
//  Created by Ha Duyen Quang Huy on 02/11/2022.
//

import Foundation

struct WeatherLocation: Equatable, Codable {
    
    var city: String!
    var country: String!
    var countryCode: String!
    var isCurrentLocation: Bool!
}
