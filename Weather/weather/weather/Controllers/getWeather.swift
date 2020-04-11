//
//  getWeather.swift
//  weather
//
//  Created by Dima on 01.04.2020.
//  Copyright © 2020 Dima Anikin. All rights reserved.
//

import UIKit

class getWeather: UIViewController {
    
    // MARK: - Properties
    let apiKey = "6f4dfa10d0b0de3a1b056bc966caf567"
    let latitude = 37.8267
    let longitude = -122.4233
    
    let urlString = "https://api.darksky.net/forecast/6f4dfa10d0b0de3a1b056bc966caf567/37.8267,-122.4233"
    
    
    // MARK: - Get data
    func fetchRequest() {
        
        guard let url = URL(string: urlString) else {return}
        
        URLSession.shared.dataTask(with: url) { data, response, error in
    
            guard let data = data, error == nil else { return }
            
            do {
                let parseJson = try JSONDecoder().decode(CurrentWeather.self, from: data)
                print(parseJson)
            }
                
            catch let jsonError {
                print(jsonError.localizedDescription)
            }
            
        }.resume()
    }
}
