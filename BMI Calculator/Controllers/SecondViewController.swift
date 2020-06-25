//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Yegor Kozlovskiy on 24.06.2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var bmiValue = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 50, y: 50, width: 50, height: 25)
        view.addSubview(label)
        
        
    }
}
