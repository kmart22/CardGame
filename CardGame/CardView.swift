//
//  CardView.swift
//  CardGame
//
//  Created by Martinsen, Kaden on 11/21/16.
//  Copyright © 2016 Martinsen, Kaden. All rights reserved.
//

import UIKit

class CardView
{
    internal var isFaceUP : Bool
    internal var cardBack : UIImageView
    internal var cardFront : UIImageView
    internal var topLabel : UILabel
    internal var bottomLabel : UILabel
    internal var cornerCurve : CGFloat
    
    
    init()
    {
        isFaceUP = false
        cardBack = UIImageView()
        cardFront = UIImageView()
        topLabel = UILabel()
        bottomLabel = UILabel()
        cornerCurve = CGFloat()
    }
    
    func stup() -> Void
    {
        
        
    }
}
