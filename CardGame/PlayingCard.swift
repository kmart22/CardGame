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
    internal var suit : String
    internal var frontImage : UIImage
    internal var color : UIColor
    
    override init()
    {
        frontImage = UIImage(named: "cardback")!
        color = UIColor.redColor()
        rank = 0
        suit = String()
        super.init()
    }
    
    init(withRank: Int, ofSuit: String)
    {
       
        frontImage = UIImage(named: "cardback")!
        color = UIColor.redColor()
        rank = withRank
        suit = ofSuit
         super.init()

    }
    
    
    func getRank() -> Int
    {
        return self.rank
    }
    func setRank(rank : Int)
    {
        self.rank = rank
 
    }
    
    func getCardData() -> String
    {
        let data = "\(PlayingCard.validRanks()[rank]) \(suit)"
        return data
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
        
        let description = "this PlayingCard has a face value of \(rank), a color of \(color) and a suit is of the \(suit) suit \(facing)"
        
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
        return validRanks().count-1
    }
    
    class func validSuits()-> [String]
    {
        return["❤️","♠️","♣️","♦️"]
    }

}
