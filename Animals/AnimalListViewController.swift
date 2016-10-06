//
//  ViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalListViewController: UITableViewController {
    
    var animals: [String] = []
    var emojis: [String] = []
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        generateAnimals()
        generateEmojis()
        
    }
    
    
    func generateAnimals() {
        
        animals = [
            "Dog",
            "Cat",
            "Mouse",
            "Hamster",
            "Bunny",
            "Panda",
            "Lion",
            "Pig",
            "Frog",
            "Octopus"
        ]
    }
    
    func generateEmojis() {
        emojis = [
            "🐶",
            "🐱",
            "🐭",
            "🐹",
            "🐰",
            "🐼",
            "🦁",
            "🐷",
            "🐸",
            "🐙"
        ]
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - Table view data source
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
  

        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath)
            cell.textLabel?.text = String(animals[indexPath.row])
            return cell
            
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            if segue.identifier == "AnimalDetailView" {
                if let destination = segue.destination as? AnimalViewController {
                    if let indexPath = tableView.indexPathForSelectedRow {
                        destination.animal = animals[indexPath.row]
                        destination.emoji = emojis[indexPath.row]
                    }
                }
            }
        }
    
    
    
    
    
}
