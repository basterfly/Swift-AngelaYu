//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    var storyCounter = 0
    let stories = [
        Story(story: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
        Story(story: "You see a tiger", choice1: "Shout for help.", choice2: "Play dead."),
        Story(story: "You find a treasure chest.", choice1: "Open it.", choice2: "Chek for traps.")
    ]

    func getAStory(counter: Int) -> Story {
        return stories[0]
    }

    mutating func buttonPressed() {
        storyCounter += 1
    }
}
