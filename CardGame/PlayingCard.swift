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
    internal var rank : Int
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
    
    
    
    internal var suit : String
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
    
    
    
    internal var frontImage : UIImage
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
    
    
    internal var color : UIColor
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
        frontImage = UIImage(named: "cardfront")!
        color = UIColor.redColor()
        rank = 0
        suit = String()
    }
    
    init(withRank: Int, ofSuit: String)
    {
        super.init()
        frontImage = UIImage(named: "cardfront")!
        color = UIColor.redColor()
        
        rank = withRank
        suit = ofSuit

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
    //The Modifier 'class' in front of the func means that this method id visible
    //without creating an instance of the class question
    //This is a calss method, not an instance method.
    class func validRanks () -> [String]
    {
        return ["??","A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    }
   
    class func maxRank() -> Int
    {
        return validRanks().count- 1
    }
    
    class func validSuits()-> [String]
    {
        return["❤️","♠️","♣️","♦️"]
    }

}
