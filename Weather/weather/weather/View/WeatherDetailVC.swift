//
//  WeatherDetailVC.swift
//  weather
//
//  Created by Dima on 01.04.2020.
//  Copyright © 2020 Dima Anikin. All rights reserved.
//

import UIKit

class WeatherDetailVC: UIViewController {
    
    @IBOutlet weak var cityName: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var windLabel: UILabel!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var weatherIconImageView: UIImageView!
    @IBOutlet weak var typeWeather: UILabel!
    
    let networkWeatherManager = NetworkWeatherManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        networkWeatherManager.fetchCurrentWeather(forRequestType: .coordinate(latitude: 51.51, longitude: -0.13))
        
        networkWeatherManager.onCompletion = { [weak self] currentWeather in
                  guard let self = self else { return }
                  self.updateInterfaceWith(weather: currentWeather)
              }
        
    }
    
    func updateInterfaceWith(weather: CurrentWeather) {
        DispatchQueue.main.async {
            self.cityName.text = weather.cityName
            self.temperatureLabel.text = weather.temperatureString
            self.windLabel.text = weather.windString
            //self.feelsLikeTemperatureLabel.text = weather.feelsLikeTemperatureString
            self.weatherIconImageView.image = UIImage(systemName: weather.systemIconNameString)
            self.humidityLabel.text = weather.humidityString
            self.pressureLabel.text = weather.pressureString
            self.typeWeather.text = weather.main
        }
    }
        
}
