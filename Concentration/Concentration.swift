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
    var chosenCard : Card?
    
    init(numberOfPairsOfCards : Int) {
        for index in 1...numberOfPairsOfCards{
            cardCollection.append(Card(identifier: index))
            cardCollection.append(Card(identifier: index))
        }
    }
    
    func choose(card: Card){
        if chosenCard == nil{
            card.wasChosen()
            chosenCard = card
        } else {
            if doCardsMatch(chosenCard!, card){
                card.match()
                chosenCard!.match()
                chosenCard = nil
            }
        }
    }
    
    func doCardsMatch(_ card1: Card, _ card2 : Card) -> Bool{
        return card1.identifier == card2.identifier
    }
}
