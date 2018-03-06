//
//  NoCardsFaceUpGameState.swift
//  Concentration
//
//  Created by Nahuel Andreoli on 05/03/2018.
//  Copyright © 2018 Nahuel Andreoli. All rights reserved.
//

import Foundation

class NoCardsFaceUpGameState : GameState{
    
    override func chooseCard(_ card: Card) -> GameState {
        card.wasChosen()
        return OneCardFaceUpState(card: card)
    }
}
