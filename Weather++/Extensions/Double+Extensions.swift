//
//  Double+Extensions.swift
//  Weather++
//
//  Created by Ha Duyen Quang Huy on 02/11/2022.
//

import Foundation


extension Double {
    
    var stringValue: String {
        
        return String(describing: self)
    }
    
    var oneDoublePlaceString: String {
        
        return String(format: "%.1f", self)
    }
    
    var twoDoublePlaceString: String {
        
        return String(format: "%.2f", self)
    }
    
    var timeStampToDate: Date {
        
        return Date(timeIntervalSince1970: self)
    }
}
