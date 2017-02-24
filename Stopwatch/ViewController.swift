//
//  ViewController.swift
//  Stopwatch
//
//  Created by JC Dy on 2/16/17.
//  Copyright © 2017 JC Dy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer:Timer?
    var stopWatch = Stopwatch();
    var timerOn:Bool = false
    
    @IBOutlet weak var displayTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateTime(_ timer: Timer) {
        //let t = startDate.timeIntervalSinceNow;
        let timeString = stopWatch.elapsedTimeSinceStart()
        self.displayTime.text = timeString;
    }
    
    @IBAction func startWasPressed(_ sender: Any) {
        if !timerOn {
            stopWatch.startTimer();
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self,
                                 selector: #selector(ViewController.updateTime(_:)),
                                 userInfo: nil,
                                 repeats: true)
            timerOn = true;
        }
    }

    @IBAction func stopWasPressed(_ sender: Any) {
        if timerOn {
            timer?.invalidate()
            timerOn = false
        }
    }
}

