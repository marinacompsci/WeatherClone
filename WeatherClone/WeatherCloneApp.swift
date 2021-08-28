//
//  WeatherCloneApp.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 27.08.21.
//

import SwiftUI

@main
struct WeatherCloneApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView(data: DataModel.createModelWithZeroedValues(), isAnimating: true)
        }
        
    }
}
