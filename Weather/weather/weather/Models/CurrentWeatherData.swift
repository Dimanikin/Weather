//
//  CurrentWeatherData.swift
//  weather
//
//  Created by Dima on 03.03.2020.
//  Copyright © 2020 Dima Anikin. All rights reserved.
//

import UIKit

struct CurrentWeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
    let wind: Wind
    
}

struct Main: Codable {
    let temp: Double
    let feelsLike: Double
    let pressure: Double
    let humidity: Double
    
    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
        case pressure
        case humidity
    }
}

struct Weather: Codable {
    let id: Int
    let main: String
}

struct Wind: Codable {
    let speed: Double
}

