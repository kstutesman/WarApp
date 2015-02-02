//
//  ViewController.swift
//  WarApp
//
//  Created by Krystin Stutesman on 1/28/15.
//  Copyright (c) 2015 Krystin Stutesman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userScoreLabel: UILabel!
    @IBOutlet weak var computerScoreLabel: UILabel!
    @IBOutlet weak var userCardImageView: UIImageView!
    @IBOutlet weak var computerCardImageView: UIImageView!
    
    var cardNamesArray: [String] = ["ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "jack", "queen", "king"]
    var userScore: Int = 0
    var computerScore: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func playButtonTouched(sender: AnyObject) {
        
        var firstRandomNumber = Int(arc4random_uniform(13))
        var secondRandomNumber = Int(arc4random_uniform(13))
        
        var firstCardString = cardNamesArray[firstRandomNumber]
        var secondCardString = cardNamesArray[secondRandomNumber]
        
        userCardImageView.image = UIImage(named: firstCardString)
        computerCardImageView.image = UIImage(named: secondCardString)
        
        if(firstRandomNumber > secondRandomNumber)
        {
            userScore += 1
            userScoreLabel.text = String(userScore)
        }
        if (secondRandomNumber > firstRandomNumber)
        {
            computerScore += 1
            computerScoreLabel.text = String(computerScore)
        }
    }
}

