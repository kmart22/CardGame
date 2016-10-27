//
//  Card.swift
//  CardGame
//
//  Created by Martinsen, Kaden on 10/25/16.
//  Copyright © 2016 Martinsen, Kaden. All rights reserved.
//

import UIKit

class Card
{
    private var backImage : UIImage
    private var isFaceUp : Bool
    
    init()
    {
        isFaceUp = false
        backImage = UIImage()
        
    }
    
    func toString() -> String
    
    {
        let description = "The card is \(isFaceUp)"
        return description
    }
    
    func getBackImage() -> UIImage
    {
       return backImage
    }
    
    func isUp() -> Bool
    {
        return isFaceUp
    }
    
    func setIsFacing(isFaceUp : Bool) -> Void
    {
        self.isFaceUp = isFaceUp
    }
}

