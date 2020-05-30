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
    
    
    
    var timer = Timer()
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUi()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        timer.invalidate()
        let userAnswer = sender.currentTitle
        
        progressBar.progress = Float(quizBrain.questionNumber + 1) / Float(quizBrain.quiz.count)
        
        if quizBrain.checkUnswer(userAnswer!) {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red

        }
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false, block: { (timer) in
            self.updateUi()
        })
    }
    
    func updateUi() {
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        questionLabel.text = quizBrain.quiz[quizBrain.questionNumber].text
        timer.invalidate()
        
    }

}

