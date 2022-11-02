//
//  Service.swift
//  Weather++
//
//  Created by Ha Duyen Quang Huy on 02/11/2022.
//

import Foundation
import RxCocoa
import RxSwift

struct APIService {
    
    static let shared = APIService()
    
    enum URLType: String {
        
        case current = "https://api.weatherbit.io/v2.0/current?city=%@,%@&key=11199b0e97084ea286e6176862d05aba"
        case hourly = "https://api.weatherbit.io/v2.0/forecast/hourly?city=%@,%@&hours=24&key=11199b0e97084ea286e6176862d05aba"
        case weekly = "https://api.weatherbit.io/v2.0/forecast/daily?city=%@,%@&days=7&key=11199b0e97084ea286e6176862d05aba"
    }
    
    func createURL(from location: WeatherLocation, with type: URLType) -> URL {
        
        let path = String(format: type.rawValue, location.city.encodeURL, location.countryCode, Constants.API_KEY)
        return URL(string: path)!
    }
    
    func loadCurrentWeather(from location: WeatherLocation) -> Observable<WeatherData> {
        
        let resource = Resource<WeatherData>(url: createURL(from: location, with: .current))
        return URLRequest.load(resource: resource)
    }
    
    func loadWeeklyForecast(from location: WeatherLocation) -> Observable<WeeklyForecastData> {
        
        let resource = Resource<WeeklyForecastData>(url: createURL(from: location, with: .weekly))
        return URLRequest.load(resource: resource)
    }
    
    func loadHourlyForecast(from location: WeatherLocation) -> Observable<HourlyForecastData> {
        
        let resource = Resource<HourlyForecastData>(url: createURL(from: location, with: .hourly))
        return URLRequest.load(resource: resource)
    }
}
