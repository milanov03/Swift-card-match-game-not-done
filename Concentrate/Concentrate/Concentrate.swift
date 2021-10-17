//
//  Concentrate.swift
//  Concentrate
//
//  Created by Milan Milanov on 7.01.20.
//  Copyright © 2020 Milan Milanov. All rights reserved.
//

import Foundation

class Concentration
{
    private(set) var cards = [Card]()
    private var indexOfOneAndOnlyFaceUpCard: Int?{
        get{
            var foundIndex: Int?
            for index in cards.indices{
                if cards[index].isFaceup{
                    if foundIndex == nil{
                        foundIndex = index
                }else{
                    return nil
                }
            }
        }
            return foundIndex
        }
        set {
            for index in cards.indices{
                cards[index].isFaceup = (index == newValue)
            }
        }
        
    }
    
    func chooseCard(at index: Int){
        if !cards[index].isMatched{
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index{
                //check if the cards match
                if cards[matchIndex].identifier == cards[index].identifier{
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceup = true
               
            } else{
                indexOfOneAndOnlyFaceUpCard = index
        }
    }
}
    
    init(numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards{
        let card = Card()
        cards += [card, card]
            
        }
    }
}
