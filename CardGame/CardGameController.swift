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
    
    private lazy var clickCount = Int()
    
    override func viewDidLoad()
    {
        let tempCard = Card()
        print(tempCard.toString())
        let otherTemp = PlayingCard()
        print (otherTemp.toString())
        
    }
    
    @IBAction func flipCard(sender: UIButton)
    {
        let words = "the card has been clicked /(clickCount) times"
        cardLabel.text = words
    }
   
}
