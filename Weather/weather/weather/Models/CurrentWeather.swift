//
//  CurrentWeather.swift
//  weather
//
//  Created by Dima on 03.04.2020.
//  Copyright © 2020 Dima Anikin. All rights reserved.
//

import Foundation


struct CurrentWeather {
    let cityName: String
    
    let temperature: Double
    var temperatureString: String {
        return String(format: "%.0f" + "º", temperature)
    }
    
    let feelsLikeTemperature: Double
    var feelsLikeTemperatureString: String {
        return String(format: "%.0f", feelsLikeTemperature)
    }
    
    let pressure: Double
    var pressureString: String {
        return "\(pressure) mm Hg"
    }
    
    let humidity: Double
    var humidityString: String {
        return "\(humidity) %"
    }
    
    let conditionCode: Int
    var systemIconNameString: String {
        switch conditionCode {
        case 200...232: return "cloud.bolt.rain"
        case 300...321: return "cloud.drizzle"
        case 500...531: return "cloud.rain"
        case 600...622: return "cloud.snow"
        case 701...781: return "smoke"
        case 800: return "sun.min"
        case 801...804: return "cloud"
        default: return "nosign"
        }
    }
    
    let wind: Double
    var windString: String {
        return "\(wind) m/s"
    }
    
    let main: String
    
    init?(currentWeatherData: CurrentWeatherData) {
        cityName = currentWeatherData.name
        temperature = currentWeatherData.main.temp
        pressure = currentWeatherData.main.pressure
        humidity = currentWeatherData.main.humidity
        feelsLikeTemperature = currentWeatherData.main.feelsLike
        conditionCode = currentWeatherData.weather.first!.id
        wind = currentWeatherData.wind.speed
        main = currentWeatherData.weather.last!.main
    }
}
