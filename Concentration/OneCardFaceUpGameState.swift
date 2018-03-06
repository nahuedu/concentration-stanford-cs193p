//
//  OneCardFaceUpGameState.swift
//  Concentration
//
//  Created by Nahuel Andreoli on 05/03/2018.
//  Copyright © 2018 Nahuel Andreoli. All rights reserved.
//

import Foundation

class OneCardFaceUpState : GameState{
    
    var faceUpCard : Card
    
    init(card :Card){
        self.faceUpCard=card
    }
    
    override func chooseCard(_ card: Card) -> GameState {
        card.wasChosen()
        return TwoFaceUpCardsGameState(faceUpCard, card)
    }
}
