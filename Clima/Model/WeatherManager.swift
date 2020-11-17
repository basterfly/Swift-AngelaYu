//
//  WeatherManager.swift
//  Clima
//
//  Created by Yegor Kozlovskiy on 10.11.2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherUrl = "https://api.openweathermap.org/data/2.5/weather?&units=metric&appid=04514790ff608722834c77770feb2ad6" //q=Kharkiv

    func fetchWeather(cityName: String) {
        let urlString = "\(weatherUrl)&q=\(cityName)"
        print(urlString)
    }
    
    func performRequest(urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: URLSessionConfiguration.default)
            let task = session.dataTask(with: url, completionHandler: handle(data: response: error:))
            task.resume()
        }
        
    }
    
    func handle(data: Data?, response: URLResponse?, error: Error?) {
        if error != nil {
            print(error!)
            return //выйти из ф-ции т.к. есть ошибка
        }
        if let safeData = data {
            let dataString = String(data: safeData, encoding: String.Encoding.utf8)
            print(dataString)
        }
    }

}
