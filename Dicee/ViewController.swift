//
//  ViewController.swift
//  Dicee
//
//  Created by Ajinkya Sonar on 19/04/18.
//  Copyright © 2018 Ajinkya Sonar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Mark: - Both dice image views linked here

    @IBOutlet weak var dice1ImageView: UIImageView!
    
    @IBOutlet weak var dice2ImageView2: UIImageView!
    
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    let diceViewImages = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Mark: - Roll Button Action

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
    }
    
    // Function for dice face changing
    
    func updateDiceImages() {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 =  Int(arc4random_uniform(6))
        
        dice1ImageView.image = UIImage(named: diceViewImages[randomDiceIndex1])
        dice2ImageView2.image = UIImage(named: diceViewImages[randomDiceIndex2])
    }
    
    // Action performed after the motion is completed
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

