//
//  HourlyForecastModel.swift
//  Weather++
//
//  Created by Ha Duyen Quang Huy on 02/11/2022.
//

import Foundation

struct HourlyForecastData: Decodable {
    
    let data: [HourlyForecast]
    
    var listHourlyForecast: [HourlyForecast] {
        
        return self.data
    }
}

struct HourlyForecast: Decodable {
    
    let temp: Double
    let datetime: String
    let weather: WeatherDescription
}
