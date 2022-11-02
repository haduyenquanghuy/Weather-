//
//  Weather.swift
//  Weather++
//
//  Created by Ha Duyen Quang Huy on 02/11/2022.
//

import Foundation

struct WeatherData: Decodable {
    let data: [Weather]
    
    var weather: Weather {
        
        return self.data[0]
    }
}

struct Weather: Decodable {
    
    let city: String // cityname
    let timestamp: Double // timestamp
    let currentTemp: Double // temperature
    let feelLikes: Double // app temperature
    let pressure: Double // pressure
    let humidity: Double  // humidity
    let windSpeed: Double // windSpeed
    let visibility: Double // visibility
    let uv: Double  // uv
    let sunrise: String // sunrise
    let sunset: String // sunset
    let weather: WeatherDescription
    
    enum CodingKeys: String, CodingKey {
        
        case city = "city_name"
        case timestamp = "ts"
        case currentTemp = "temp"
        case feelLikes = "app_temp"
        case pressure = "pres"
        case humidity = "rh"
        case windSpeed = "wind_spd"
        case visibility = "vis"
        case uv
        case sunrise
        case sunset
        case weather
    }
}

struct WeatherDescription: Decodable {
    
    let description: String // description
    let icon: String // icon
}
