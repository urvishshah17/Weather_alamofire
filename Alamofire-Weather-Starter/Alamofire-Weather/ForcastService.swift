//
//  ForcastService.swift
//  Alamofire-Weather
//
//  Created by Urvish shah on 2017-12-19.
//  Copyright © 2017 Duc Tran. All rights reserved.
//

import Foundation
class ForcastService
{
    // sample url: https://api.darksky.net/forecast/fed774dd2fdbda09c3e5600631cfa4ce/37.8267,-122.4233
    let forecastAPIKey: String
    let forecastBaseURL: URL?
    
    init(APIKey: String)
    {
        self.forecastAPIKey = APIKey
        forecastBaseURL = URL(String: "https://api.darksky.net/forecast/\(APIKey)")
    }
    func getCurrentWeather(latitude: Double, longitude: Double){
        let forecastURL = URL(String: "\(forecastBaseURL)/\(latitude),\(longitude)")
    }
}


