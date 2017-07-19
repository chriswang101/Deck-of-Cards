//
//  Card.swift
//  DeckOfCards
//
//  Created by user on 6/23/17.
//  Copyright © 2017 user. All rights reserved.
//

import UIKit

class Card: NSObject {
    var number: String? = nil
    var suit: String? = nil
    
    init(number: String, suit: String) {
        self.number = number
        self.suit = suit
    }
    
    func getCardText() -> String {
        guard let number = self.number else { return "" }
        guard let suit = self.suit else { return "" }
        let returnString = number + suit
        return returnString
    }
}
