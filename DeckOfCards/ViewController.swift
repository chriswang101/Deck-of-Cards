//
//  ViewController.swift
//  DeckOfCards
//
//  Created by user on 6/23/17.
//  Copyright © 2017 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var playingCardDeck = Deck()
    lazy var cardsLeftCounter: Int = self.getCardCount();

    @IBOutlet weak var playingCardLabel: UILabel!
    @IBOutlet weak var cardsLeftLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playingCardLabel.text = nil
        cardsLeftLabel.text = "Cards left: \(cardsLeftCounter)"
    }

    @IBAction func drawRandomCardButton(_ sender: Any) {
        let randomCard = playingCardDeck.drawRandomCard()
        
        if let randomCard = randomCard {
            cardsLeftCounter -= 1
            cardsLeftLabel.text = "Cards left: \(cardsLeftCounter)"
            playingCardLabel.text = randomCard.getCardText()
        } else {
            playingCardLabel.text = "RESET"
        }
    }

    @IBAction func resetDeckButton(_ sender: Any) {
        playingCardDeck.resetDeck()
        cardsLeftCounter = playingCardDeck.cardCount
        cardsLeftLabel.text = "Cards left: \(cardsLeftCounter)"
        playingCardLabel.text = nil
    }
    
    func getCardCount() -> Int {
        return playingCardDeck.cardCount
    }
}

