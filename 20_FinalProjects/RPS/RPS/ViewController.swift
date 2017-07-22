//
//  ViewController.swift
//  RPS
//
//  Created by Guillermo Alcalá Gamero on 22/7/17.
//  Copyright © 2017 Guillermo Alcalá Gamero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var appSign: UILabel!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(state: .start)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func rockButtonTapped(_ sender: UIButton) {
        play(playerChoice: .rock)
    }

    @IBAction func paperButtonTapped(_ sender: UIButton) {
        play(playerChoice: .paper)
    }
    
    @IBAction func scissorsButtonTapped(_ sender: UIButton) {
        play(playerChoice: .scissors)
    }
    
    @IBAction func playButtonTapped(_ sender: UIButton) {
        updateUI(state: .start)
    }
    
    func updateUI(state: GameState) {
        status.text = state.toString
        updateBackgroundColor(state: state)
        resetGame(state: state)
        
    }
    
    func updateBackgroundColor(state: GameState) {
        switch state {
        case .start:
            self.view.backgroundColor = UIColor.white
        case .win:
            self.view.backgroundColor = UIColor.green
        case .lose:
            self.view.backgroundColor = UIColor.red
        case .draw:
            self.view.backgroundColor = UIColor.gray
        }
    }
    
    func resetGame(state: GameState) {
        if state == .start {
            appSign.text = "🤖"
            playButton.isHidden = true
            enableRPSButtons(enabled: true)
            hideRPSButtons(hidden: false)
        }
    }
    
    func enableRPSButtons(enabled: Bool) {
        rockButton.isEnabled = enabled
        paperButton.isEnabled = enabled
        scissorsButton.isEnabled = enabled
    }
    
    func hideRPSButtons(hidden: Bool) {
        rockButton.isHidden = hidden
        paperButton.isHidden = hidden
        scissorsButton.isHidden = hidden
    }
    
    func play(playerChoice: Sign) {
        
        let iaChoice: Sign = randomSign()
        var newState: GameState
        
        newState = playerChoice.versus(opponentsSign: iaChoice)
        updateUI(state: newState)
        appSign.text = iaChoice.emoji
        enableRPSButtons(enabled: false)
        
        switch playerChoice {
        case .rock:
            paperButton.isHidden = true
            scissorsButton.isHidden = true
        case .paper:
            rockButton.isHidden = true
            scissorsButton.isHidden = true
        case .scissors:
            rockButton.isHidden = true
            paperButton.isHidden = true
        }
        
        playButton.isHidden = false
    }
}

