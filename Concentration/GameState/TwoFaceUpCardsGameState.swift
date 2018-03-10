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
    
    override func chooseCard(card : Card, score : Int, game: Concentration) -> Int {
        var newScore = score
        if(firstFaceUpCard.identifier == secondFaceUpCard.identifier){
            self.firstFaceUpCard.match()
            self.secondFaceUpCard.match()
            newScore += 2
        } else {
            
            if(self.firstFaceUpCard.wasSeen){
                newScore-=1
            }
            
            if(self.secondFaceUpCard.wasSeen){
                newScore-=1
            }
            
            self.firstFaceUpCard.putDown()
            self.secondFaceUpCard.putDown()
        }
        card.wasChosen()
        game.changeState(OneCardFaceUpState(card: card))
        return newScore
    }
}
