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
                        .fontWeight(.bold)
                        .padding(.bottom, 3)
                    Text(title1.1)
                        .font(.title2)
                }
                
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 25, alignment: .leading)
                Spacer()
                VStack(alignment: .leading) {
                    Text(title2.0.uppercased())
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .padding(.bottom, 3)
                    Text(title2.1)
                        .font(.title2)
                }
                .padding(.all, 2)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 24, alignment: .leading)
                Spacer()
            }
            .padding()
        }
    }
}

struct MoreInfoView_Previews: PreviewProvider {
    static var previews: some View {
        MoreInfoView(title1: ("Humidity", "79 %"), title2: ("Pressure", "1009 hPa"))
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
