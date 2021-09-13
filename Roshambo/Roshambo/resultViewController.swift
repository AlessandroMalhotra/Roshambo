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
    @IBOutlet var images: UIImageView!
    

    
    override func viewWillAppear(_ animated: Bool) {
        
        if let results = self.results {
            self.result.text = results
            
            let name = self.results
            let names = name!.firstIndex(of: ",")
            let imagePicker = name![..<names!]
            
            self.images.image = UIImage(named: "\(imagePicker)")
        } else {
            self.result = nil
            self.images.image = nil
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
