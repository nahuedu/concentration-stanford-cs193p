//
//  TwoFaceUpCardsGameState.swift
//  Concentration
//
//  Created by Nahuel Andreoli on 05/03/2018.
//  Copyright © 2018 Nahuel Andreoli. All rights reserved.
//

import Foundation


class TwoFaceUpCardsGameState : GameState{
    
    var firstFaceUpCard : Card
    var secondFaceUpCard : Card
    
    init(_ card1 : Card, _ card2 : Card){
        self.firstFaceUpCard=card1
        self.secondFaceUpCard=card2
    }
    
    override func chooseCard(_ card: Card) -> GameState {
        if(firstFaceUpCard.identifier == secondFaceUpCard.identifier){
            self.firstFaceUpCard.match()
            self.secondFaceUpCard.match()
        } else {
            self.firstFaceUpCard.putDown()
            self.secondFaceUpCard.putDown()
        }
        card.wasChosen()
        return OneCardFaceUpState(card: card)
    }
}
