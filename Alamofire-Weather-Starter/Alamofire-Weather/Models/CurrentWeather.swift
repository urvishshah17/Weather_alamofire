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
        static let icon = "icon"
    }
    init(WeatherDictionary: [String : Any])
    {
        temprature = WeatherDictionary[WeatherKeys.temprature] as? Int
        
        if let humidityDouble = WeatherDictionary[WeatherKeys.humidity] as? Double{
            humidity = Int(humidityDouble * 100)
        }else{
            humidity = nil
        }
        
        if let precipDouble = WeatherDictionary[WeatherKeys.precipProbability] as? Double{
            precipProbability = Int(precipDouble * 100)
        }else{
            precipProbability = nil
        }
        summary = WeatherDictionary[WeatherKeys.summary] as? String
        icon = WeatherDictionary[WeatherKeys.icon] as? String
    }
}
