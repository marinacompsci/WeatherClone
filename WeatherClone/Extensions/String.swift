//
//  String.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 27.08.21.
//

import Foundation

extension String {
    func putZeroInFront() -> String {
        if Int(self)! < 10 {
            return "0\(self)"
        } else {
            return self
        }
    }
    
    func splitApiDate() -> [String] {
        return self.split(separator: " ").map({String($0)})
    }
    
    func separateHourFromTime() -> String {
        return String(self.split(separator: ":")[0])
    }
    
    func separetSecondsFromTime() -> String {
        let split = self.split(separator: ":")
        return "\(split[0]):\(split[1])"
    }
}
