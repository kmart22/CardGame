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
    
    
    private var color : UIColor
    {
            get
            {
                return self.color
            }
            set(color)
            {
                self.color = color
            }
    }
    
    
    
    override init()
    {
        super.init()
        frontImage = UIImage()
        color = UIColor()
        rank = 0
        suit = String()
    }
    
    
    
    func getRank() -> Int
    {
        return self.rank
    }
    func setRnk(rank : Int)
    {
        self.rank = rank
 
    }
    
    override func toString() -> String
    {
        let facing :String
        if self.isUp()
        {
            facing = "is face up"
        }
        else
        {
            facing = "is face down"
        }
        
        let description = "this PlayingCard has a face value of \(rank), a color of \(color), the back image is \(self.getBackImage()) and a suit is of the \(suit) suit \(facing)"
        
        return description
    }
    
}
