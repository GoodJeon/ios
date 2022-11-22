//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
//    let softTime = 5
//    let mediumTime = 7
//    let hardTime = 12
        
    let eggTimes = ["Soft": 1, "Medium": 7, "Hard": 12]
    var boilingTime = 60
    
    var timer = Timer()
    
    var progressBarFill = 0
    
    var tmp = 0
    
    var player: AVAudioPlayer!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        
        let result = eggTimes[hardness]!
        boilingTime = result * 60
        
        progressBarFill = 0
        progressBar.progress = 0
        
        tmp = result * 60
        
        timeLabel.text = hardness
//
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
        }
    
    
    
    @objc func updateTimer() {
        if boilingTime > 0 {
            print("\(boilingTime) seconds.")
            progressBarFill += 1
            progressBar.progress = Float(progressBarFill) / Float(tmp)
            boilingTime -= 1
            
        } else {
            timer.invalidate()
            timeLabel.text = "Done!"
            progressBar.progress = 1
            
            // sound
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
        
    }
    
    
}
