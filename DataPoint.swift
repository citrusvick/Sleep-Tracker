//
//  DataPoint.swift
//  Sleep Tracker
//
//  Created by Mushik, Victoria on 4/23/24.
//

import Foundation

struct SleepDataPoint: Identifiable {
    
    var id = UUID().uuidString
    var day: String
    var hours: Int
}
