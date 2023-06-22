//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // IBOutlet --> Change design by code (images)
    // IBAction --> Change code by design (buttons)
    

    // IBOutlet allows me to reference a UI element, IB --> Interface Buider
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // WHO . WHAT = VALUE
        //diceImageView1.image = #imageLiteral(resourceName: "DiceSix")   // #imageLiteral(
        //diceImageView1.alpha = 0.5
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        diceImageView1.image = diceArray.randomElement()    // Option 1
        let randomNumber = Int.random(in: 0...5)
        diceImageView2.image = diceArray[randomNumber]      // Option 2
    }
}
