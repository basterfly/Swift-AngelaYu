//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        if sender.currentTitle == "C" {
            playSound(soundName: "C")
            print(sender.currentTitle as Any)
        }
        if sender.currentTitle == "D" {
            playSound(soundName: "D")
            print(sender.currentTitle!)
        }
        if sender.currentTitle == "E" {
            playSound(soundName: "E")
            print(sender.currentTitle!)
        }
        if sender.currentTitle == "F" {
            playSound(soundName: "F")
            print(sender.currentTitle)
        }
        if sender.currentTitle == "G" {
            playSound(soundName: "G")
            print(sender.currentTitle!)
        }
        if sender.currentTitle == "A" {
            playSound(soundName: "A")
            print(sender.currentTitle)
        }
        if sender.currentTitle == "B" {
            playSound(soundName: "B")
            print(sender.currentTitle)
        }
        
//        playSound(currentTitle: <#T##String#>)
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}


