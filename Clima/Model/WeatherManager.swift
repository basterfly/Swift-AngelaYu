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
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: URLSessionConfiguration.default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return //выйти из ф-ции т.к. есть ошибка
                }
                if let safeData = data {
                    parseJSON(weatherData: safeData)//
                    let dataString = String(data: safeData, encoding: String.Encoding.utf8)
                    print(dataString!)
                }
            }
            task.resume()
        }
    }
    
    func parseJSON(weatherData: Data) {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            print(decodedData.name)
            print(decodedData.main.temp)
            print(decodedData.weather[0].description)
        } catch {
            print(error)
        }
    }
}
