//
//  ContentView.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 27.08.21.
//

import SwiftUI

struct ContentView: View {
    @State var data: [WeatherModel]
    @State var isAnimating: Bool
    var body: some View {
        ZStack {
            VStack {
                CityView(city: "Berlin", weatherDescription: data[0].description,
                         tempNow: data[0].temp, maxTemp: data[0].tempMax, minTemp: data[0].tempMin)
                    .padding(50)
                DividerView()
                Spacer()
                DailyViewSection(data: data)
                    .padding(.leading)
                    .padding(.top, -1)
                    .padding(.bottom, -1)
                DividerView()
                WeeklyViewSection(data: data)
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
    
    
    func updateUIWithData(data: [WeatherModel]?) {
        guard let data = data else { fatalError("Could not update UI with data")}
        self.data = data
        self.isAnimating = false
    }
    


}

struct ContentView_Previews: PreviewProvider {
   
    static var previews: some View {
        ContentView(data: WeatherModel.createZeroList(), isAnimating: true)
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
