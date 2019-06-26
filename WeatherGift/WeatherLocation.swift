//
//  WeatherLocation.swift
//  WeatherGift
//
//  Created by Mary Otto on 6/23/19.
//  Copyright © 2019 Mary Otto. All rights reserved.
//

import Foundation

class WeatherLocation: Codable {
    var name: String
    var coordinates: String
    
    init(name: String, coordinates: String) {
        self.name = name
        self.coordinates = coordinates
    }
}
