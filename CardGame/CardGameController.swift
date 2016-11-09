//
//  CardGameController.swift
//  CardGame
//
//  Created by Martinsen, Kaden on 10/27/16.
//  Copyright © 2016 Martinsen, Kaden. All rights reserved.
//

import UIKit

class CardGameController : UIViewController
{
    @IBOutlet weak var cardLabel: UILabel!
    @IBOutlet weak var cardButton: UIButton!
    
    private lazy var currentDeck = PlayingCardDeck()
    private lazy var clickCount = Int()
    
    override func viewDidLoad()
    {
      
        
    }
    
    @IBAction func flipCard(sender: UIButton)
    {
        clickCount += 1
        let words = "the card has been clicked /(clickCount) times"
        cardLabel.text = words
        
        if let currentCard = currentDeck.drawRandomCard() as? PlayingCard
        {
            cardButton.setTitle("\(currentCard.GetCardData())", forState: UIControlState.Normal)
        }
        else
        {
            cardLabel.text = "the decwas exhausted - reinitializing"
            currentDeck = PlayingCardDeck()
        }
    }
   
}
