//
//  MoreInfoViewSection.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 28.08.21.
//

import SwiftUI

struct MoreInfoViewSection: View {
    var description: String
    var temp: Int
    var sunrise: Int
    var sunset: Int
    var humidity: Int
    var pressure: Int
    var feelsLike: Int
    var windSpeed: Double
    var visibility: Int
    var uvi: Double
    
    var body: some View {
        VStack {
            Group {
                DividerView(height: 3)
                Text("Today: \(description). It's \(temp)º.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                DividerView()
                MoreInfoView(title1: ("Sunrise", Date(timeIntervalSince1970: TimeInterval(sunrise)).description.splitApiDate()[1].separetSecondsFromTime()), title2: ("Sunset", Date(timeIntervalSince1970: TimeInterval(sunset)).description.splitApiDate()[1].separetSecondsFromTime()))
                DividerView()
                MoreInfoView(title1: ("Humidity", "\(humidity) %"), title2: ("Pressure", "\(pressure) hPa"))
                DividerView()
                MoreInfoView(title1: ("Wind Speed", "\(windSpeed) km/h"), title2: ("Feels like", "\(feelsLike)º"))
                DividerView()
                MoreInfoView(title1: ("Visibility", "\(visibility)"), title2: ("UV Index", "\(uvi)"))
            }
            DividerView(height: 3)
        }
        .foregroundColor(.white)
    }
}

struct MoreInfoViewSection_Previews: PreviewProvider {
    static var previews: some View {
        MoreInfoViewSection(description: "Mostly cloudy", temp: 15, sunrise: 1630123873, sunset: 1630173884, humidity: 89, pressure: 1015, feelsLike: 16, windSpeed: 1.54, visibility: 10000, uvi: 0)
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
