//
//  WeeklyViewSection.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 27.08.21.
//

import SwiftUI

struct WeeklyViewSection: View {
    var data: DataModel
    

    var body: some View {
        ScrollView(showsIndicators: false) {
            ForEach(data.daily, id: \.self) { item in
                WeeklyView(iconImage: UIImage(systemName: "thermometer")!, iconString: item.weather[0].icon!, weekDay: Date(timeIntervalSince1970: TimeInterval(item.dt)).getDayOfWeek() , probabilityOfRain: item.pop, minTemp: Int(item.temp.min), maxTemp: Int(item.temp.max))
            }
        }
    }
}

struct WeeklyViewSection_Previews: PreviewProvider {
    static var previews: some View {
        WeeklyViewSection(data: DataModel.createFakeDateModel())
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
