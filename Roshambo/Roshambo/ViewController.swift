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
    
    func playGame(_ buttonPressed: String, _ opponentValue: String) -> String {
        
        let result = (buttonPressed, opponentValue)
        
        switch result {
        case ("paper", "rock"):
            return "Paper covers Rock, you Win!"
        
        case ("rock", "scissors"):
            return "Rock smashses Scissors, you Win"
        
        case ("scissors", "paper"):
            return "Scissors cuts Paper, you Win!"
        
        case ("rock", "paper"):
            return "Paper covers Rock, you Loose!"
        
        case ("scissors", "rock"):
            return "Rock smashses Scissors, you Loose"
            
        case ("paper", "scissors"):
            return "Scissors cuts Paper, you Loose!"
        
        default:
            return "Draw!"
        }
    }

    @IBAction func rock() {
        
        let controller: resultViewController
        
        controller = storyboard?.instantiateViewController(withIdentifier: "resultViewController") as! resultViewController
        
        let opponent = opponentPlay()
        
        let play = playGame("rock", opponent)
        
        controller.results = play
        
        present(controller, animated: true, completion: nil)
        
    }
    
    @IBAction func paper() {
        
        self.performSegue(withIdentifier: "paperSegue", sender: self)
        
        
    }
    
    @IBAction func scissors() {
        
        performSegue(withIdentifier: "scissorsSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "scissorsSegue" {
            let controller = segue.destination as! resultViewController
            
            let opponent = opponentPlay()
            
            let play = playGame("scissors", opponent)
            
            controller.results = play
            
        } else if segue.identifier == "paperSegue" {
            let controller = segue.destination as! resultViewController
            
            let opponent = opponentPlay()
            
            let play = playGame("rock", opponent)
            
            controller.results = play
            
        }
    }
}
