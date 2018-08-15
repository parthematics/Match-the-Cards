//
//  ViewController.swift
//  MatchTheCards
//
//  Created by Parth on 8/14/18.
//  Copyright © 2018 Parth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func cardPressed(_ sender: UIButton) {
        flipButton(withEmoji: "🧐", on: sender)
    }
    
    @IBAction func otherCardPressed(_ sender: UIButton) {
        flipButton(withEmoji: "🤩", on: sender)
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

