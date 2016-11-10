//
//  Deck.swift
//  CardGame
//
//  Created by Martinsen, Kaden on 10/31/16.
//  Copyright © 2016 Martinsen, Kaden. All rights reserved.
//

import Foundation

class Deck
{
    lazy var cards = [Card] ()
    
    func shuffleDeck() -> Void
    {
        //creates a temporary array to hold card objects.
        var tempDeck = [Card]()
        while cards.count > 0
        {
            //chooses a valid random index in the range of 0...cards.count-1
            let randomSpot = Int (arc4random() % UInt32(cards.count))
            //Takes the card from that spot from the deck. The deck decreases in count.
            //this affec the state of the cards object.
            let removeCard = cards.removeAtIndex(randomSpot)
            //add the removed card to the end of the temporary deck.
            tempDeck.append(removeCard)
        }
        //Replace the state deck with the temporary deck
        self.cards = tempDeck
    }
    func cutDeck() -> Void
    {
        
    }
    
    func drawCard() -> Card?
    {
        if self.cards.count > 0
        {
            return cards.removeAtIndex(0)
        }
        else
        {
            return nil
        }
    }
    
    func drawRandomCard() -> Card?
    {
        if cards.count > 0
        {
            let randomIndex = (Int)(arc4random() % (UInt32) (cards.count))
            return cards.removeAtIndex(randomIndex)
        }
        else
        {
            return nil
        }
    }
}