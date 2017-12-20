//
//  CurrentWeather.swift
//  Alamofire-Weather
//
//  Created by Urvish shah on 2017-12-19.
//  Copyright © 2017 Duc Tran. All rights reserved.
//

import Foundation
class CurrentWeather{
    let temprature: Int?
    let humidity: Int?
    let precipProbability: Int?
    let summary: String?
    let icon: String?
    
    struct WeatherKeys{
        static let temprature = "temprature"
        static let humidity = "humidity"
        static let precipProbability = "precipProbability"
        static let summary = "summary"
        static icon = "icon"
    }
    init(WeatherDictionary: [String : Any])
    {
        
    }
}
