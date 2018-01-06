//
//  ForcastService.swift
//  Alamofire-Weather
//
//  Created by Urvish shah on 2017-12-19.
//  Copyright © 2017 Duc Tran. All rights reserved.
//

import Foundation
import Alamofire

class ForcastService
{
    // sample url: https://api.darksky.net/forecast/fed774dd2fdbda09c3e5600631cfa4ce/37.8267,-122.4233
    let forecastAPIKey: String
    let forecastBaseURL: URL?
    
    init(APIKey: String)
    {
        self.forecastAPIKey = APIKey
        forecastBaseURL = URL(string: "https://api.darksky.net/forecast/\(APIKey)")
    }
    func getCurrentWeather(latitude: Double, longitude: Double, completion: @escaping (CurrentWeather?) -> Void){
        if let forecastURL = URL(string: "\(forecastBaseURL!)/\(latitude),\(longitude)"){
            Alamofire.request(forecastURL).responseJSON(completionHandler: { (response) in
               
                let jsonDictionary = response.result.value as?[String : Any]
                if let currentWeatherDictionary = jsonDictionary["currently"] as?
                [String : Any]{
                    let currentWeather = CurrentWeather(WeatherDictionary: currentWeatherDictionary)
                    completion(currentWeather)
                }else{
                    completion(nil)
                }
           
            })
        }
    }
}


