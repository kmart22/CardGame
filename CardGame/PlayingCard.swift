//
//  PlayingCard.swift
//  CardGame
//
//  Created by Martinsen, Kaden on 10/25/16.
//  Copyright © 2016 Martinsen, Kaden. All rights reserved.
//

import UIKit

class PlayingCard : Card
{
    private var rank : Int
    {
        get
        {
            return self.rank
        }
        
        set(rank)
        {
            self.rank = rank
        }
    }
    
    private var suit : String
    {
        get
        {
            return self.suit
        }
        set(suit)
        {
            self.suit = suit
        }
    }
    
    private var frontImage : UIImage
    {
        get
        {
            return self.frontImage
        }
        set(frontImage)
        {
            self.frontImage = frontImage
        }
    }
    
    
    func getRank() -> Int
    {
        return self.rank
    }
    func setRnk(rank : Int)
    {
        self.rank = rank
    }
}
