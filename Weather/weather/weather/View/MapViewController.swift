//
//  ViewController.swift
//  weather
//
//  Created by Dima on 26.12.2019.
//  Copyright © 2019 Dima Anikin. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var showButton: UIButton!
    @IBOutlet weak var viewShowWeather: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showButton.layer.cornerRadius = 27
        showButton.layer.borderWidth = 1
        showButton.layer.borderColor = UIColor(red: 0, green: 0.478, blue: 1, alpha: 1).cgColor
        
        viewShowWeather.layer.cornerRadius = 10
        viewShowWeather.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3).cgColor
        viewShowWeather.layer.shadowOpacity = 1
        viewShowWeather.layer.shadowOffset = CGSize(width: 0, height: 0)
        viewShowWeather.layer.shadowRadius = 24
        
    }
    
}
