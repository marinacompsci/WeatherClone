//
//  WeeklyViewSection.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 27.08.21.
//

import SwiftUI

struct WeeklyViewSection: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            ForEach(0..<5) { _ in
                WeeklyView(weekDay: .friday, imageSystemName: "cloud.sun.rain.fill", probabilityOfRain: 70, minTemp: 11, maxTemp: 19)
            }
        }
    }
}

struct WeeklyViewSection_Previews: PreviewProvider {
    static var previews: some View {
        WeeklyViewSection()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
