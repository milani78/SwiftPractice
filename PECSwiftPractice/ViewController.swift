//
//  ViewController.swift
//  PECSwiftPractice
//
//  Created by Inga on 1/26/17.
//  Copyright © 2017 Inga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        let individualScores = [75, 43, 103, 87, 12]
        var teamScore = 0
        
        for score in individualScores {
            
            if score > 50 {
                teamScore += 3
                print("teamscore1: \(teamScore)")

                
            }   else {
                teamScore += 1
                print("teamscore2: \(teamScore)")

            }
        }
        
        
        //print("teamscore: \(teamScore)")
        
        
        
        
        var optionalString: String? = "Hello"
        print(optionalString)
        
        var optionalName: String? = "John Appleseed"
        var greeting = "Hello!"
        
        if let name = optionalName {
            
            greeting = "Hello, \(name)"
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

