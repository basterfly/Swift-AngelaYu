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
        let story = storyBrain.getAStory(counter: storyBrain.storyCounter)
        storyLabel.text = story.story0
        choice1Button.setTitle(story.choice1, for: .normal)
        choice2Button.setTitle(story.choice2, for: UIControl.State.normal)
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        updateUi(sender: sender)
        storyLabel.text = storyBrain.stories[storyBrain.storyCounter].story0
        choice1Button.setTitle(storyBrain.stories[storyBrain.storyCounter].choice1, for: UIControl.State.normal)
        choice2Button.setTitle(storyBrain.stories[storyBrain.storyCounter].choice2, for: UIControl.State.normal)
        
    }
    
    func updateUi(sender: UIButton) {
        storyBrain.buttonPressed()
        if sender == choice1Button {
            
        }
        if sender == choice2Button {
            storyBrain.storyCounter += 1
        }
        if storyBrain.storyCounter >= storyBrain.stories.count { //test for looping
            return storyBrain.storyCounter = 0
        }
    }
    
}

