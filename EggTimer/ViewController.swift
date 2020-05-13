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
        sixtySecondsTimer(multipliyer: eggTimes[hardness]!)
        
    }
    
    func sixtySecondsTimer(multipliyer: Int) {
        let seconds = 60 * multipliyer
        for i in (-1 * seconds)...(-1) {
            print(-i)
            sleep(1)
        }
    }
}
