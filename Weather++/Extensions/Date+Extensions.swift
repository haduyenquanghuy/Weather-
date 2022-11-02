//
//  Date+Extensions.swift
//  Weather++
//
//  Created by Ha Duyen Quang Huy on 02/11/2022.
//

import Foundation

extension Date {
    
    enum DateFormat: String {
        
        case short = "MMM d"
        case time = "HH:mm"
        case dayOfWeek = "EEEE"
    }
    
    func convert(_ date: Date, with format: DateFormat) -> String {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format.rawValue
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        return dateFormatter.string(from: self)
    }
    
    func shortDate() -> String {
        
        return convert(self, with: .short)
    }
    
    func time() -> String {
        
        return convert(self, with: .time)
    }
    
    func dayOfWeek() -> String {
        
        return convert(self, with: .dayOfWeek)
    }
}
