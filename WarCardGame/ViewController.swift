//
//  ViewController.swift
//  WarCardGame
//
//  Created by Samir Ben Bouker on 11/01/2021.
//  Copyright © 2021 Samir Ben Bouker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightSocreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealTapped(_ sender: Any) {
        let leftRandomNumber = Int.random(in: 2...14)
        
        let rightRandomNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        if(leftRandomNumber > rightRandomNumber ) {
            leftScore += 1
            
            leftScoreLabel.text = String(leftScore)
        }
        else{
            rightScore += 1
            
            rightSocreLabel.text = String(rightScore)
        }
        
    }
    
}

