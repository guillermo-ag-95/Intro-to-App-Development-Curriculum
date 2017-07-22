//
//  GameState.swift
//  RPS
//
//  Created by Guillermo Alcalá Gamero on 22/7/17.
//  Copyright © 2017 Guillermo Alcalá Gamero. All rights reserved.
//

import Foundation

enum GameState {
    
    case start, win, lose, draw
    
    var toString: String {
        
        var result: String
        
        switch self {
        case .start:
            result = "Are you ready? Go"
        case .win:
            result = "You win this time"
        case .lose:
            result = "Loooooser"
        case .draw:
            result = "This fight is a... DRAW"
        }
        
        return result
    }
    
}
