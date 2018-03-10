//
//  GameState.swift
//  Concentration
//
//  Created by Nahuel Andreoli on 05/03/2018.
//  Copyright © 2018 Nahuel Andreoli. All rights reserved.
//

import Foundation

class GameState{
    
    //should not be used
    func chooseCard(card : Card, score : Int, game: Concentration) -> Int{
        game.changeState(GameState())
        return score
    }
    
}
