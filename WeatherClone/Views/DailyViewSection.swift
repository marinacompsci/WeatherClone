//
//  DailyViewSection.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 27.08.21.
//

import SwiftUI

struct DailyViewSection: View {
    // data goes here
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<12) { _  in
                        DailyView(hour: "12", imageSystemName: "cloud.drizzle.fill", temperature: 13)
                    }
                }
            }
        }
    }
}

struct DailyViewSection_Previews: PreviewProvider {
    static var previews: some View {
        DailyViewSection()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
