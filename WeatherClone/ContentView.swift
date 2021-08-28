//
//  ContentView.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 27.08.21.
//

import SwiftUI

struct ContentView: View {
    @State var data: DataModel?
    @State var isAnimating: Bool
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                CityView(city: "Berlin", weatherDescription: data!.current.weather[0].description.capitalized, tempNow: Int(data!.current.temp), maxTemp: Int(data!.daily[0].temp.max), minTemp: Int(data!.daily[0].temp.min))
                    .padding(50)
                DividerView()
                Spacer()
                DailyViewSection(data: data!, iconImage: UIImage(systemName: "thermometer")!)
                    .padding(.leading)
                    .padding(.top, -1)
                    .padding(.bottom, -1)
                DividerView()
                WeeklyViewSection(data: data!)
                    .padding(.top, 5)
                    .padding(.leading, 5)
                    .padding(.trailing, 5)
            }
            LoadingView(isAnimating: isAnimating)
                .visibility(hidden: !isAnimating)

        }
        .onAppear() {
            loadData(handler: updateUIWithData)
        }
    }
    
    
    func updateUIWithData(data: DataModel?) {
        guard let data = data else { fatalError("Could not update UI with data")}
        self.data = data
        self.isAnimating = false
    }
    
}

struct ContentView_Previews: PreviewProvider {
   
    static var previews: some View {
        ContentView(data: DataModel.createModelWithZeroedValues(), isAnimating: true)
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
