//
//  WeeklyView.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 27.08.21.
//

import SwiftUI

struct WeeklyView: View {
    var body: some View {
        List(0..<20) { _ in
           HStack {
                Text("Saturday")
                Spacer()
                HStack {
                    Image(systemName: "cloud.rain.fill")
                        .renderingMode(.original)
                    Text("70 %")
                        .foregroundColor(.blue)
                }
                .padding()
                Spacer()
                Text("19")
                    .padding(.trailing)
                Text("11")
                    .foregroundColor(.gray)
                
            }
           .font(.title2)
        }
    }
}

struct WeeklyView_Previews: PreviewProvider {
    static var previews: some View {
        WeeklyView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
