//
//  ViewController.swift
//  MatchTheCards
//
//  Created by Parth on 8/14/18.
//  Copyright © 2018 Parth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numMoves = 0 {
        didSet {
            numMovesLabel.text = "Flips: \(numMoves)"
        }
    }
    
    @IBOutlet weak var numMovesLabel: UILabel!
    @IBOutlet var cardButtons: [UIButton]!
    var emojiChoices = ["🧐", "🤩", "😡", "💩", "🧐", "🤩", "😡", "💩"]
    
    @IBAction func cardPressed(_ sender: UIButton) {
        numMoves += 1
        if let cardNumber = cardButtons.index(of: sender) {
            print("card #: \(cardNumber)")
            flipButton(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("Card not found")
        }
        
    }
    
    func flipButton(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }

}

