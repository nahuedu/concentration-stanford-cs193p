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
    var score = 0
    
    init(numberOfPairsOfCards : Int) {
        for index in 0..<numberOfPairsOfCards{
            cardCollection.append(Card(identifier: index))
            cardCollection.append(Card(identifier: index))
        }
        self.shuffleCards()
    }
    
    func chooseCard(at index: Int){
        let card = cardCollection[index]
        self.score = self.gameState.chooseCard(card: card, score: score, game: self)
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
    
    func changeState(_ state: GameState){
        self.gameState = state
    }
}
