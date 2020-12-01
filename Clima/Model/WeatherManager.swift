//
//  WeatherManager.swift
//  Clima
//
//  Created by Yegor Kozlovskiy on 10.11.2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

var weatherController = WeatherViewController()

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
                    self.parseJSON(weatherData: safeData)
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
//            weatherController.cityLabel.text = decodedData.name
            print(decodedData.main.temp)
//            weatherController.temperatureLabel.text = String(decodedData.main.temp)
            print(decodedData.weather[0].description)
            let id = decodedData.weather[0].id
            print(getConditionName(conditionId: id))
        } catch {
            print(error)
        }
    }
    
    func getConditionName(conditionId: Int) -> String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
        
    }
}
