//
//  ContentView.swift
//  Sleep Tracker
//
//  Created by Mushik, Victoria on 4/08/24.
//

import SwiftUI
import Charts

struct ContentView: View {
    
    var data = [
        SleepDataPoint(day: "Mon", hours: 6),
        SleepDataPoint(day: "Tues", hours: 7),
        SleepDataPoint(day: "Wed", hours: 9),
        SleepDataPoint(day: "Thurs", hours: 5),
        SleepDataPoint(day: "Fri", hours: 6),
        SleepDataPoint(day: "Sat", hours: 8),
        SleepDataPoint(day: "Sun", hours: 9)
    ]
    
    var body: some View {
        Chart {
            ForEach (data) {d in
                BarMark(x: PlottableValue.value("Day", d.day), y: .value("Hours", d.hours))
                    .annotation{
                        Text(String(d.hours))
                    }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
