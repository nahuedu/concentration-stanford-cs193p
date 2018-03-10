//
//  Card.swift
//  Concentration
//
//  Created by Nahuel Andreoli on 04/03/2018.
//  Copyright © 2018 Nahuel Andreoli. All rights reserved.
//

import Foundation

class Card {
    
    var isFaceUp = false
    var isMatched = false
    var identifier : Int
    var wasSeen = false
    
    init(identifier : Int){
        self.identifier = identifier
    }
    
    func wasChosen(){
        isFaceUp=true
    }
    
    func putDown() {
        self.isFaceUp=false
        self.wasSeen = true
    }
    
    func match(){
        isMatched = true
    }

}
