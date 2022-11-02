//
//  WeeklyForecastModel.swift
//  Weather++
//
//  Created by Ha Duyen Quang Huy on 02/11/2022.
//

import Foundation

struct WeeklyForecastData: Decodable {
    
    let data: [WeeklyForecast]
    
    var listWeeklyForecast: [WeeklyForecast] {
        
        return self.data
    }
}

struct WeeklyForecast: Decodable {
    
    let temp: Double
    let datetime: String
    let weather: WeatherDescription
}

