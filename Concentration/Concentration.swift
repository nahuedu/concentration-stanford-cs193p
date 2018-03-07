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
        self.shuffleCards()
    }
    
    func chooseCard(at index: Int){
        let card = cardCollection[index]
        self.gameState = self.gameState.chooseCard(card)
    }
    
    func shuffleCards(){
        for index in 0..<cardCollection.count{
            let card = cardCollection[index]
            let newRandomPosition = Int(arc4random_uniform(UInt32(self.cardCollection.count)))
            let secondCard = cardCollection[newRandomPosition]
            //swap the cards
            cardCollection[newRandomPosition] = card
            cardCollection[index] = secondCard
        }
    }
}
