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
    
    init(identifier : Int){
        self.identifier = identifier
    }
    
    func wasChosen(){
        //horrible if structure :(
        if(isFaceUp){
            if(isMatched){
                //nothing
            } else{
                //nothing
            }
        } else{
            if(isMatched){
                //nothing
            } else{
                isFaceUp = true
            }
        }
    }
    
    func match(){
        isMatched = true
    }

}
