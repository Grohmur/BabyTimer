//
//  IntervalModel.swift
//  BabyTimer
//
//  Created by Михаил Зверьков on 13.03.2022.
//

import Foundation

enum timerTipe {
    case feeding
    case sleeping
}

struct Interval {
    private let calendar = Calendar.current
    var start: Date
    var end: Date
    var lastInterval: Date
    private var duration: Double {
        end.timeIntervalSince(start)
    }
    private var timeSinceLast: Double {
        start.timeIntervalSince(lastInterval)
    }
    let type: timerTipe
    
    static func getInterval () -> Interval {
        let calendar = Calendar.current
        let dateComponent = DateComponents(calendar: calendar,
                                           year: 2022,
                                           month: 3,
                                           day: 5,
                                           hour: 2,
                                           minute: 10,
                                           second: 10)
        let dateComponent2 = DateComponents(calendar: calendar,
                                            year: 2022,
                                            month: 3,
                                            day: 5,
                                            hour: 3,
                                            minute: 10,
                                            second: 10)
        let dateComponent3 = DateComponents(calendar: calendar,
                                            year: 2022,
                                            month: 3,
                                            day: 5,
                                            hour: 1,
                                            minute: 10,
                                            second: 10)
        let sleep = Interval(start: calendar.date(from: dateComponent)!,
                             end: calendar.date(from: dateComponent2)!,
                             lastInterval: calendar.date(from: dateComponent3)!,
                           type: .sleeping)
        return sleep
    }
    
    static func getIntervals() -> [Interval] {
        let calendar = Calendar.current
        var intervals: [Interval] = []
        for iteration in 1...3 {
            let dateComponent = DateComponents(calendar: calendar,
                                               year: 2022,
                                               month: 3,
                                               day: 5,
                                               hour: 2 + iteration,
                                               minute: 10,
                                               second: 10)
            let dateComponent2 = DateComponents(calendar: calendar,
                                                year: 2022,
                                                month: 3,
                                                day: 5,
                                                hour: 3 + iteration,
                                                minute: 10,
                                                second: 10)
            let dateComponent3 = DateComponents(calendar: calendar,
                                               year: 2022,
                                               month: 3,
                                               day: 5,
                                               hour: 1 + iteration,
                                               minute: 10,
                                               second: 10)
            let sleep = Interval(start: calendar.date(from: dateComponent)!,
                                 end: calendar.date(from: dateComponent2)!,
                                 lastInterval: calendar.date(from: dateComponent3)!,
                                 type: .sleeping)
            let feed = Interval(start: calendar.date(from: dateComponent)!,
                                end: calendar.date(from: dateComponent2)!,
                                lastInterval: calendar.date(from: dateComponent3)!,
                                type: .feeding)
            intervals.append(sleep)
            intervals.append(feed)
        }
        return intervals
    }

}





