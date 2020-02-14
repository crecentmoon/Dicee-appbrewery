//
//  ViewController.swift
//  Dicee
//
//  Created by Angela Yu on 25/01/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
        
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //who.what = value make sure to look like this!
/*
        diceImageView1.alpha = 0.5
        diceImageView2.alpha = 0.5
*/
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        
        let diceArray = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]
        
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray[Int.random(in: 0 ... 5)]
    }
    
}

