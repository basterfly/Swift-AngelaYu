//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        ["Four + two is equal to Six?", "True"],
        ["Five - Three is greater than One?", "True"],
        ["Three + Eight is less than Ten?", "False"]
    ]
    var questionNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUi()
        progressBar.progress = 0
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("Right!")
            progressBar.progress += 0.1
        } else {
            print("Wrong!")
        }
        
        questionNumber += 1
        if questionNumber == 3 {
            questionNumber = 0
        }
        updateUi()
    }
    
    func updateUi() {
        questionLabel.text = quiz[questionNumber][0]
    }

}

