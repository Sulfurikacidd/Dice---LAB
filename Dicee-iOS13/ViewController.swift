//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //IBOutlets - reference to UI
    @IBOutlet weak var diceImageOne: UIImageView!
    @IBOutlet weak var diceImageTwo: UIImageView!
    
    //Global Variables
    let imageArr = [
        UIImage(imageLiteralResourceName: kDiceOne),
        UIImage(imageLiteralResourceName: kDiceTwo),
        UIImage(imageLiteralResourceName: kDiceThree),
        UIImage(imageLiteralResourceName: kDiceFour),
        UIImage(imageLiteralResourceName: kDiceFive),
        UIImage(imageLiteralResourceName: kDiceSix)
    ]
    
    var diceRandomOne = Int.random(in: 0...5)
    var diceRandomTwo = Int.random(in: 0...5)
    
    //This func runs when the view firsts load
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageOne.image = imageArr[diceRandomOne]
        diceImageTwo.image = imageArr[diceRandomTwo]
    }

    //IBActions - connection to the events in UI
    @IBAction func rollBtnPressed(_ sender: UIButton) {
        diceRandomOne = Int.random(in: 0...5)
        diceRandomTwo = Int.random(in: 0...5)
        
        diceImageOne.image = imageArr[diceRandomOne]
        diceImageTwo.image = imageArr[diceRandomTwo]
    }
    
}

