//
//  Deck.swift
//  DeckOfCards
//
//  Created by user on 6/23/17.
//  Copyright © 2017 user. All rights reserved.
//

import UIKit

class Deck: NSObject {
    var visitedCards = [String]()
    let cardCount = 52
    private var suits = ["♠️","♣️","♥️","♦️"]
    private var numbers = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    
    func resetDeck() {
        visitedCards = [String]()
        let time = UInt32(Date.timeIntervalSinceReferenceDate)
        srandom(time)
    }
    
    func drawRandomCard() -> Card? {
        var cardToReturn: Card
        if visitedCards.count >= cardCount {
            return nil
        }
        
        repeat {
            let randomCardIndex = Int(arc4random_uniform(52))
            print(randomCardIndex)
            let randomNumberIndex: Int = randomCardIndex/suits.count
            let randomSuitIndex = randomCardIndex % 4
            
            
            cardToReturn = Card(number: numbers[randomNumberIndex], suit: suits[randomSuitIndex])

        } while (visitedCards.contains(cardToReturn.getCardText()))
        
        visitedCards.append(cardToReturn.getCardText())
        return cardToReturn
    }
}
