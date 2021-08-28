//
//  DailyViewSection.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 27.08.21.
//

import SwiftUI

struct DailyViewSection: View {
    var data: [WeatherModel]
    
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(data) { item in
                        DailyView(hour: String(item.date.splitApiDate()[1].separateHourFromTime()), imageSystemName: "cloud.drizzle.fill", temperature: item.temp)
                    }
                }
            }
        }
        .frame(height: 100)
    }
}

struct DailyViewSection_Previews: PreviewProvider {
    static var previews: some View {
        DailyViewSection(data: WeatherModel.createModelList(withAmount: 12))
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
