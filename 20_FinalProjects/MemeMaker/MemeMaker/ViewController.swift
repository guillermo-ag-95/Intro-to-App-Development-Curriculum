//
//  ViewController.swift
//  MemeMaker
//
//  Created by Guillermo Alcalá Gamero on 22/7/17.
//  Copyright © 2017 Guillermo Alcalá Gamero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var topChoices: [CaptionOption] = []
    var bottomChoices: [CaptionOption] = []
    
    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottonCaptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeChoices()
        initializeCaptionSegments()
        updateLabel()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tappedCaptionControl(_ sender: UISegmentedControl) {
        updateLabel()
    }
    
    func initializeChoices() {
        let glass: CaptionOption = CaptionOption(emoji: "🕶", caption: "You know what's cool?")
        let spark: CaptionOption = CaptionOption(emoji: "💥", caption: "You know what's makes me mad?")
        let heart: CaptionOption = CaptionOption(emoji: "💕", caption: "You know what I love?")
        let cat: CaptionOption = CaptionOption(emoji: "🐱", caption: "Cats wearing hats")
        let dog: CaptionOption = CaptionOption(emoji: "🐶", caption: "Dogs carrying logs")
        let monkey: CaptionOption = CaptionOption(emoji: "🐵", caption: "Monkeys being funky")
        
        topChoices.append(glass)
        topChoices.append(spark)
        topChoices.append(heart)
        bottomChoices.append(cat)
        bottomChoices.append(dog)
        bottomChoices.append(monkey)
        
    }
    
    func initializeCaptionSegments() {
                
        topCaptionSegmentedControl.removeAllSegments()
        bottomCaptionSegmentedControl.removeAllSegments()
        
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
        
        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        
        for choice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        
    }
    
    func updateLabel() {
        
        var selectedTopChoice: CaptionOption
        var selectedBottomChoice: CaptionOption
        
        switch topCaptionSegmentedControl.selectedSegmentIndex {
        case -1:
            topCaptionLabel.text = "Tap a sign from above"
        default:
            selectedTopChoice = topChoices[topCaptionSegmentedControl.selectedSegmentIndex]
            topCaptionLabel.text = selectedTopChoice.caption
        }
        
        switch bottomCaptionSegmentedControl.selectedSegmentIndex {
        case -1:
            bottonCaptionLabel.text = "Tap a sign from below"
        default:
            selectedBottomChoice = bottomChoices[bottomCaptionSegmentedControl.selectedSegmentIndex]
            bottonCaptionLabel.text = selectedBottomChoice.caption
        }
        
        
        
    }

}

