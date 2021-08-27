//
//  MoreInfoView.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 27.08.21.
//

import SwiftUI

struct MoreInfoView: View {
    var title1: (String, String)
    var title2: (String, String)
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(title1.0.uppercased())
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text(title1.1)
                        .font(.title2)
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text(title2.0.uppercased())
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text(title2.1)
                        .font(.title2)
                }
                Spacer()
                
            }
            .padding()
            Divider()
                
        }
             
    }
}

struct MoreInfoView_Previews: PreviewProvider {
    static var previews: some View {
        MoreInfoView(title1: ("Humidity", "79 %"), title2: ("Pressure", "1009 hPa"))
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
