//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Yegor Kozlovskiy on 25.06.2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue : String? //опшиналы нужны т.к. не делается инициализация
    var advice: String?
    var backgroundColor: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var background: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        background.backgroundColor = backgroundColor // view.backgroundColor = backgroundColor - vожно так и не делать тогда оутлет к background
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)   // self. можно не писать в таких случаях xcode сам понимает кто что вызывает
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
