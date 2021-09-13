//
//  ViewController.swift
//  Roshambo
//
//  Created by Alessandro Malhotra on 11/09/2021.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Outlet
    
    @IBOutlet var play: UILabel!
    
    
    // MARK: Generates Random Opponents Play
    
    func opponentPlay() -> String {
        let choices = ["rock", "paper", "scissors"]
        
        let result = choices.randomElement()!
        
        return result
    }
    
    
    // MARK: Compares User and Opponent Choices and returns a String
    
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

    // MARK: Programmatic Approach
    
    @IBAction func rock() {
        
        let controller: resultViewController
        
        controller = storyboard?.instantiateViewController(withIdentifier: "resultViewController") as! resultViewController
        
        let opponent = opponentPlay()
        
        let play = playGame("rock", opponent)
        
        controller.results = play
        
        present(controller, animated: true, completion: nil)
        
    }
    
    // MARK: Segue with Code Approach
    
    @IBAction func paper() {
        
        self.performSegue(withIdentifier: "paperSegue", sender: self)
        
        
    }
    
    // MARK: Segue
    
    @IBAction func scissors() {
        
        performSegue(withIdentifier: "scissorsSegue", sender: self)
    }
    
    // MARK: Segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "scissorsSegue" {
            let controller = segue.destination as! resultViewController
            
            let opponent = opponentPlay()
            
            let play = playGame("scissors", opponent)
            
            controller.results = play
            
        } else if segue.identifier == "paperSegue" {
            let controller = segue.destination as! resultViewController
            
            let opponent = opponentPlay()
            
            let play = playGame("paper", opponent)
            
            controller.results = play
            
        }
    }
}
