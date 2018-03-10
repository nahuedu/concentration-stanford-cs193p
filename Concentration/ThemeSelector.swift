//
//  ThemeSelector.swift
//  Concentration
//
//  Created by Nahuel Andreoli on 07/03/2018.
//  Copyright © 2018 Nahuel Andreoli. All rights reserved.
//

import Foundation

class ThemeSelector{
    
    var numberOfPairsOfCards : Int
    var themes = [[String]]()
    
    init(numberOfPairsOfCards : Int){
        self.numberOfPairsOfCards = numberOfPairsOfCards
        self.addThemes()
    }
    
    func addThemes(){
        self.themes.append(["🤬","😎","🤩","😍","🤮","😱"])
        self.themes.append(["🦁","🦒","🦓","🐸","🐊","🦈"])
        self.themes.append(["⚽️","🏈","🏀","🎾","⚾️","🏐"])
        self.themes.append(["🍎","🍇","🥝","🍌","🥥","🍍"])
        self.themes.append(["🍔","🍕","🌭","🥪","🌮","🌯"])
        self.themes.append(["🎂","🍦","🍰","☕️","🍪","🍩"])
    }
    
    func getRandomTheme() -> [Int:String]{
        let randomThemeIndex = Int(arc4random_uniform(UInt32(themes.count)))
        let themeEmojis = self.themes[randomThemeIndex]
        var emojiDictionary = [Int:String]()
        
        //now I build the dictionary
        for pairIndex in 0..<numberOfPairsOfCards{
            let emoji = themeEmojis[pairIndex]
            emojiDictionary[pairIndex] = emoji
        }
        
        return emojiDictionary
    }
}
