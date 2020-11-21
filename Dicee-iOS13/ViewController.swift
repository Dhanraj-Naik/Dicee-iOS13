//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var diceImageViewOne: UIImageView!
    
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    var leftDiceNumber = 2
    var rightDiceNumber = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        diceImageViewOne.image = #imageLiteral(resourceName: "DiceTwo")
//        diceImageViewOne.alpha = 0.5
        
        diceImageViewTwo.image = #imageLiteral(resourceName: "DiceSix")
//        diceImageViewTwo.alpha = 0.5
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
//        diceImageViewOne.image = diceArray[Int.random(in: 0...5)]
        diceImageViewOne.image = diceArray.randomElement() //it will do exactly same
        diceImageViewTwo.image = diceArray[Int.random(in: 0...5)]
        
//        leftDiceNumber += Int.random(in: 0...5)
//        rightDiceNumber -= 1
        
        
        print("Button clicked re")
    }
    
}

