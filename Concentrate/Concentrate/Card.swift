//
//  Card.swift
//  Concentrate
//
//  Created by Milan Milanov on 7.01.20.
//  Copyright © 2020 Milan Milanov. All rights reserved.
//

import Foundation

struct Card {
    var isFaceup = false
    var isMatched = false
    var identifier: Int
    
    private static var identifierFactory = 0
    
   private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
        
    }
}
