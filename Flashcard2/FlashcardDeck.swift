//
//  FlashcardDeck.swift
//  Flashcard2
//
//  Created by Judy Li on 11/29/20.
//  Copyright © 2020 Judy Li. All rights reserved.
//

import UIKit

class FlashcardDeck: NSObject {
    var deckID: Int
    var deckName: String
    
    init(deckID: Int, deckName: String) {
        self.deckID = deckID
        self.deckName = deckName
    }
}
