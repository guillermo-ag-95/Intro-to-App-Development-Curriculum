//
//  Sign.swift
//  RPS
//
//  Created by Guillermo Alcalá Gamero on 22/7/17.
//  Copyright © 2017 Guillermo Alcalá Gamero. All rights reserved.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

enum Sign {
    
    case rock, paper, scissors
    
    var emoji: String {
        switch self {
        case .rock:
            return "👊"
        case .paper:
            return "✋"
        case .scissors:
            return "✌️"
        }
    }
    
    func versus(opponentsSign: Sign) -> GameState {
        
        var result: GameState = .start
        
        switch self {
        case .rock:
            switch opponentsSign {
            case .rock:
                result = .draw
            case .paper:
                result = .lose
            case .scissors:
                result = .win
            }
        case .paper:
            switch opponentsSign {
            case .rock:
                result = .win
            case .paper:
                result = .draw
            case .scissors:
                result = .lose
            }
        case .scissors:
            switch opponentsSign {
            case .rock:
                result = .lose
            case .paper:
                result = .win
            case .scissors:
                result = .draw
            }
        }
        
        return result
    }
}

func randomSign() -> Sign {
    
    let sign: Int = randomChoice.nextInt()
    var result: Sign
    
    if sign == 0 {
        result = .rock
    } else if sign == 1 {
        result = .paper
    } else {
        result = .scissors
    }
    
    return result
}

