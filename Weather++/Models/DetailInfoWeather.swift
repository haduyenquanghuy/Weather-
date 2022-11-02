//
//  DetailWeatherModel.swift
//  Weather++
//
//  Created by Ha Duyen Quang Huy on 02/11/2022.
//

import Foundation

struct DetailInfoWeather {
    
    let feelLikes: String
    let pressure: String
    let humidity: String
    let windSpeed: String
    let visibility: String
    let uv: String
    let sunrise: String
    let sunset: String
    
    init(from weather: Weather) {
        
        self.feelLikes = weather.feelLikes.oneDoublePlaceString
        self.pressure = weather.pressure.oneDoublePlaceString
        self.humidity = weather.humidity.oneDoublePlaceString
        self.windSpeed = weather.windSpeed.oneDoublePlaceString
        self.visibility = weather.visibility.oneDoublePlaceString
        self.uv = weather.uv.oneDoublePlaceString
        self.sunrise = weather.sunrise
        self.sunset = weather.sunset
    }

}
