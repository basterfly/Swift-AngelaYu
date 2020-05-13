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
    
    @IBAction func softAction(_ sender: UIButton) {
        let hardness = sender.titleLabel!.text!
        print(eggTimes[hardness]!)
        sixtySecondsTimer(multiplier: eggTimes[hardness]!)
        
    }
    
    func sixtySecondsTimer(multiplier: Int) {
        var seconds = 60 * multiplier
            Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
                if seconds > 0 {
                    print(seconds)
                    seconds -= 1
                } else {
                    timer.invalidate()
                }
        }
    }
}
