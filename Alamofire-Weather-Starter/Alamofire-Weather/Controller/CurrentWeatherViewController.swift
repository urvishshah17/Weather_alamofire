//
//  CurrentWeatherViewController.swift
//  Alamofire-Weather
//
//  Created by Urvish shah on 2018-01-06.
//  Copyright © 2018 Duc Tran. All rights reserved.
//

import UIKit
class CurrentWeatherViewController: UIViewController {

    @IBOutlet weak var backGroundImageView: UIImageView!
    @IBOutlet weak var tempScaleLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
   
    let forcastAPIKey = "fed774dd2fdbda09c3e5600631cfa4ce"
    let cordinate : (lat: Double, long:Double) = (37.8267,-122.4233)
    var forcastService :  ForcastService
    override func viewDidLoad() {
        super.viewDidLoad()

        forcastService = ForcastService(APIKey: forcastAPIKey)
        forcastService.getCurrentWeather(latitude: cordinate.lat, longitude: cordinate.long) { (currentWeather) in
                if let currentWeather = currentWeather{
                    DispatchQueue.main.async {
                        if let temperature = currentWeather.temprature{
                            self.tempLabel.text="\(temperature)"
                        }else{
                            self.tempLabel.text="-"
                        }
                }
            }
        }
    }

   


}
