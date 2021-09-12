//
//  ViewController.swift
//  Roshambo
//
//  Created by Alessandro Malhotra on 11/09/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var play: UILabel!
    
    /// method that generates a random value for the computer from a list of values containing rock, paper, scissors and return this value. Need to call this method in each action method and pass it to result view controller.
    
    func opponentPlay() -> String {
        let choices = ["rock", "paper", "scissors"]
        
        let result = choices.randomElement()!
        
        return result
    }
    

    @IBAction func rock() {
        
        let controller: resultViewController
        
        controller = storyboard?.instantiateViewController(withIdentifier: "resultViewController") as! resultViewController
        
        present(controller, animated: true, completion: nil)
        
    }
    
    @IBAction func paper() {
        
        performSegue(withIdentifier: "paperSegue", sender: self)
        
    }
    
    @IBAction func scissors() {
        
        performSegue(withIdentifier: "scissorsSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! resultViewController
        
        
    }


}

