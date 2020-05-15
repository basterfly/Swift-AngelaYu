//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    var timer = Timer()
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBAction func softAction(_ sender: UIButton) {
        timer.invalidate()
        let hardness = sender.titleLabel!.text!
        print(eggTimes[hardness]!)
        sixtySecondsTimer(multiplier: eggTimes[hardness]!)
        
    }
    
    func sixtySecondsTimer(multiplier: Int) {
        var seconds = 1 * multiplier //60sec but 1 sec just for test
            timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
                if seconds > 0 {
                    self.progressBar.progress = Float(seconds)
                    self.label.text = "Wait for \(seconds) seconds"
                    seconds -= 1
                } else {
                    timer.invalidate()
                    self.label.text = "Done!"
                    self.endFunction()
                }
        }
    }
    
    func endFunction() {
        timer = Timer.scheduledTimer(withTimeInterval: 25, repeats: false) { (timer) in
            self.label.text = "How do you like your eggs?"
        }
    }
}
