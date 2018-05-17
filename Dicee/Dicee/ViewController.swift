//
//  ViewController.swift
//  Dicee
//
//  Created by Alessio Mazzone on 5/15/18.
//  Copyright © 2018 Alessio Mazzone. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    // Listner function for button press.
    @IBAction func rollButtonPressed(_ sender: UIButton)
    {
        randomDiceIndex1 = Int(arc4random_uniform(6)) + 1
        randomDiceIndex2 = Int(arc4random_uniform(6)) + 1
        
        diceImageView1.image = UIImage(named: "dice\(randomDiceIndex1)")
        diceImageView2.image = UIImage(named: "dice\(randomDiceIndex2)")
    }
}

