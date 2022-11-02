//
//  CurrentWeatherModel.swift
//  Weather++
//
//  Created by Ha Duyen Quang Huy on 02/11/2022.
//

import Foundation

struct CurrentWeather: Decodable {
    
    let city: String
    let currentTime: String
    let currentTemp: String
    let description: String
    
    init(from weather: Weather) {
        
        self.city = weather.city
        self.currentTime = weather.timestamp.timeStampToDate.shortDate()
        self.currentTemp = weather.currentTemp.oneDoublePlaceString
        self.description = weather.weather.description
    }
}

