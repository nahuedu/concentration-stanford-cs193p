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
    
    override func chooseCard(card : Card, score : Int, game: Concentration) -> Int {
        card.wasChosen()
        game.changeState(TwoFaceUpCardsGameState(faceUpCard, card))
        return score
    }
}
