//
//  Date.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 28.08.21.
//

import Foundation

extension Date {
    func isToday() -> Bool {
        return self.description.split(separator: " ")[0] == Date().description.split(separator: " ")[0]
    }
    
    func getDayOfWeek() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE"
        return formatter.string(from: self)
    }
}
