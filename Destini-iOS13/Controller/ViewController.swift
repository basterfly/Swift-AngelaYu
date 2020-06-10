//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let story = storyBrain.getAStory(counter: storyBrain.storyNumber)
        storyLabel.text = story.story0
        choice1Button.setTitle(story.choice1, for: .normal)
        choice2Button.setTitle(story.choice2, for: UIControl.State.normal)
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        updateUi(sender: sender)
        
    }
    
    func updateUi(sender: UIButton) {
        storyBrain.nextStory(userChoice: (sender.titleLabel?.text)!)
        storyLabel.text = storyBrain.stories[storyBrain.storyNumber].story0
        choice1Button.setTitle(storyBrain.stories[storyBrain.storyNumber].choice1, for: UIControl.State.normal)
        choice2Button.setTitle(storyBrain.stories[storyBrain.storyNumber].choice2, for: UIControl.State.normal)
        
//        if sender == choice1Button {
//
//        }
//        if sender == choice2Button {
////            storyBrain.storyNumber += 1
//        }
//        if storyBrain.storyNumber == 2 && storyBrain.stories[storyBrain.storyNumber].story0 == storyBrain.stories[2].story0 {
//            storyBrain.storyNumber = 0
//        }
//        if storyBrain.storyNumber >= storyBrain.stories.count { //test for looping
//            return storyBrain.storyNumber = 0
//        }
//        if story
    }
    
}

