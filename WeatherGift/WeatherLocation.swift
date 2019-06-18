//
//  WeatherLocation.swift
//  WeatherGift
//
//  Created by Mary Otto on 6/17/19.
//  Copyright © 2019 Mary Otto. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class WeatherLocation {
    var name = ""
    var coordinates = ""
    
    func getWeather() {
        let weatherURL = urlBase + urlAPIKey + coordinates
        print(weatherURL)
        
        Alamofire.request(weatherURL).responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print("*****JSON: \(json)")
            case .failure(let error):
                print(error)
            }
        }
    }
}
