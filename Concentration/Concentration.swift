//
//  Concentration.swift
//  Concentration
//
//  Created by Nahuel Andreoli on 04/03/2018.
//  Copyright © 2018 Nahuel Andreoli. All rights reserved.
//

import Foundation


class Concentration {
    
    var cardCollection = [Card]()
    var gameState : GameState = NoCardsFaceUpGameState()
    
    init(numberOfPairsOfCards : Int) {
        for index in 1...numberOfPairsOfCards{
            cardCollection.append(Card(identifier: index))
            cardCollection.append(Card(identifier: index))
        }
    }
    
    func chooseCard(at index: Int){
        let card = cardCollection[index]
        self.gameState = self.gameState.chooseCard(card)
    }
    
}
