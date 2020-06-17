//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var height: Float = 0.0
    @IBAction func heightSlider(_ sender: UISlider) {
        height = (sender.value * 100).rounded() / 100
        print(height)
    }
    @IBAction func weightSlider(_ sender: UISlider) {
        print(String(format: "%.2f", sender.value))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

