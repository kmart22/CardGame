//
//  StupidGame.swift
//  CardGame
//
//  Created by Martinsen, Kaden on 11/11/16.
//  Copyright © 2016 Martinsen, Kaden. All rights reserved.
//

import UIKit

class StuidGame
{
    //Declaration Section
    internal var deck = PlayingCardDeck()
    internal var hand = [PlayingCard]()
    lazy var turn = 1;
    lazy var players = 4;
    lazy var handSize = 5;
    
    //inits
    init()
    {
        self.deck = PlayingCardDeck()
        self.hand = [PlayingCard]()
        self.score = 0
    }
    
    //methods
    func startGame() -> Void
    {
        
        
        
        
    }
    
    func checkMatch() -> Bool
    {
        let hasMatch :Bool
        if(hand[0].getRank == hand[1].rank) || (hand[0].suit == hand[1].suit == hand[1].suit)
        {
            hasMatch = true
        }
        else
        {
            hasMatch = false
        }
        return hasMatch
    }
    
    func playMatchGame() -> Bool
    {
        if gameDeck.cards.count > 0
        {
            if checkMatch()
            {
                score += 5
            }
            else
            {
                score -= 2
            }
        }
        hand.removeAll()
        drawCards()
    }
}