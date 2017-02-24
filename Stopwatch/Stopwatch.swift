//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by JC Dy on 2/16/17.
//  Copyright © 2017 JC Dy. All rights reserved.
//

import Foundation

class Stopwatch {
    
    var startTime:Date?
    
    func startTimer() {
        startTime = Date();
    }
    
    func elapsedTimeSinceStart() -> String {
        var elapsed = 0.0;
        if let elapsedTime = startTime {
            elapsed = elapsedTime.timeIntervalSinceNow
        }
        elapsed = -elapsed
        let minutes = Int(floor((elapsed / 60)));
        let seconds = Int(floor((elapsed.truncatingRemainder(dividingBy: 60))));
        print(elapsed)
        let millis = Int(elapsed.truncatingRemainder(dividingBy: 1) * 100);
        let timeString = String(format: "%02d:%02d.%02d", minutes, seconds, millis)
        print(timeString)
        return timeString
    }
    
}
