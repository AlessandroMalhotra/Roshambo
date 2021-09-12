//
//  resultViewController.swift
//  Roshambo
//
//  Created by Alessandro Malhotra on 11/09/2021.
//

import UIKit

class resultViewController: UIViewController {
    
    var results: String?
    
    @IBOutlet var result: UILabel!
    
    /// Compare the user’s play with the randomly generated play to determine a winner. Compare opponent and user value to determine a winner, need to work out the amount of options and come up with something: switch statement with player result and then case comparisions and set the label text depending on the result
    
    /// method to display message depending on who is a winner
    
    override func viewWillAppear(_ animated: Bool) {
        
        if let results = self.results {
            self.result.text = results
        } else {
            self.result = nil
        }
        
    }
    
    
    @IBAction func playAgain() {
        
        performSegue(withIdentifier: "playAgain", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        self.results = ""
        self.result.text = ""
        
    }
   
    
    
    /// Do any additional setup after loading the view.
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
