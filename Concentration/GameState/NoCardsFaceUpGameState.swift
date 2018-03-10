//
//  NoCardsFaceUpGameState.swift
//  Concentration
//
//  Created by Nahuel Andreoli on 05/03/2018.
//  Copyright © 2018 Nahuel Andreoli. All rights reserved.
//

import Foundation

class NoCardsFaceUpGameState : GameState{
    
    override func chooseCard(card : Card, score : Int, game: Concentration) -> Int {
        card.wasChosen()
        game.changeState(OneCardFaceUpState(card: card))
        return score
    }
}
