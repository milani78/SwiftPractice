//
//  ViewController.swift
//  PECSwiftPractice
//
//  Created by Inga on 1/26/17.
//  Copyright © 2017 Inga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!

    
    
    
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
        
        var optionalName: String? = "Inga"
        var greeting = "Hello!"
        
        if let name = optionalName {
            
            greeting = "Hello, \(name)"
            print("greeting inside if: \(greeting)")
        }
        
        print("greeting after if: \(greeting)")
        
        
        
        print(averageIsAbove75(a: 55, b: 25, c: 24))
        print(averageIsAbove75(a: 100, b: 85, c: 90))
        
        
        
        
        
        var numberWords = [1: "one"]
        print("my dictionary: \(numberWords)")
        
        numberWords.removeAll()
        print("my dictionary: \(numberWords)")
        
        
        

      
    }
    
    
    
    
    func averageIsAbove75(a: Double, b: Double, c: Double) -> Bool {
        
        let average = (a + b + c) / 3
        
        var myBool = true
        
        if average > 75.0 {
            myBool = true
        } else {
            myBool = false
        }
        
        return myBool
    }
    

    
    
    @IBAction func myButtonTapped(_ sender: UIButton) {
        
        print("Hello Button!")
        
    }
    

    
    
    override func viewWillAppear(_ animated: Bool) {
        //
    }
    
    
    
    
    override func viewWillDisappear(_ animated: Bool) {
        //
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

