//
//  ViewController.swift
//  Concentration
//
//  Created by Nahuel Andreoli on 28/02/2018.
//  Copyright © 2018 Nahuel Andreoli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var concentrationGame = Concentration(numberOfPairsOfCards: cardButtonCollection.count / 2)
    
    @IBOutlet var cardButtonCollection: [UIButton]!
    var emojiDictionary = [1:"😀", 2:"💩", 3:"👻"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        let indexOfCard = cardButtonCollection.index(of: sender)!
        concentrationGame.chooseCard(at: indexOfCard)
        updateViewFromModel()
    }
    
    func updateViewFromModel(){
        for cardButtonIndex in cardButtonCollection.indices{
            let card = concentrationGame.cardCollection[cardButtonIndex]
            let cardButton = cardButtonCollection[cardButtonIndex]
            updateButtonFromCard(cardButton, card, card.identifier)
        }
    }
    
    func updateButtonFromCard(_ cardButton: UIButton, _ card: Card, _ cardIndex: Int){
        if(card.isMatched){
            cardButton.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
            cardButton.setTitle("", for: UIControlState.normal)
        } else {
            if(card.isFaceUp){
                cardButton.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                cardButton.setTitle(emojiDictionary[cardIndex], for: UIControlState.normal)
            } else {
                cardButton.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
                cardButton.setTitle("", for: UIControlState.normal)
            }
        }
    }
    @IBAction func pushNewGameButton(_ sender: UIButton) {
        let numberOfPairOfCards = self.cardButtonCollection.count / 2
        self.concentrationGame = Concentration(numberOfPairsOfCards: numberOfPairOfCards)
        self.updateViewFromModel()
    }
    
}

