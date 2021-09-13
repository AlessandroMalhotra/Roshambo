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
    
    

    
    override func viewWillAppear(_ animated: Bool) {
        
        if let results = self.results {
            self.result.text = results
        } else {
            self.result = nil
        }
        
    }
    
    
    @IBAction func playAgain() {
        
        self.results = ""
        self.result.text = ""
        
        dismiss(animated: true, completion: nil)
        
    }

}
