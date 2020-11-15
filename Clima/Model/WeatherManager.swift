//
//  WeatherManager.swift
//  Clima
//
//  Created by Yegor Kozlovskiy on 10.11.2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherUrl = "http://api.openweathermap.org/data/2.5/weather?&units=metric&appid=04514790ff608722834c77770feb2ad6" //q=Kharkiv

    func fetchWeather(cityName: String) {
        let urlString = "\(weatherUrl)&q=\(cityName)"
        print(urlString)
    }

}
