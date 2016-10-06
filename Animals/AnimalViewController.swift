//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    @IBOutlet weak var animalLabel: UILabel!
    @IBOutlet weak var animalEmoji: UILabel!
    
    
    var animal: String!
    var emoji: String!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 //       animal
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        animalLabel.text = animal
        animalEmoji.text = emoji
        self.navigationItem.title = animal
    }

}

