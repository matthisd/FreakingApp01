//
//  ViewController.swift
//  FreakingApp01
//
//  Created by Matthis Drolet on 13/04/2017.
//  Copyright © 2017 Matthis Drolet. All rights reserved..
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var theLabel: UILabel!
    
    @IBOutlet weak var text01: UITextField!
    
    @IBOutlet weak var text02: UITextField!
    
    @IBOutlet weak var calcButton: UIButton!
    
    @IBAction func calcButton(_ sender: Any) {
        
        print(text01)
        print(text01.text!)
        print(text02.text!)
        
        theLabel.text = String(Double(text01.text!)! + Double(text02.text!)!)
    }
    
    
    
    var tapButtonCount = 0
    var tapChangeCount = 0
    
    @IBAction func buttonTapped(_ sender: Any) {
        
        tapButtonCount += 1
        
        if tapButtonCount >= 10 {
            theLabel.text = "Button taps maxed out!"
        } else if theLabel.text == "How you doin'??" {
            theLabel.text = "Me?"
        } else {
            theLabel.text = "How you doin'??"
        }
        
        print("Button tapped \(tapButtonCount) times")
    }

    @IBAction func changeTapped(_ sender: Any) {
        
        tapChangeCount += 1
        
        if tapChangeCount >= 10 {
            theLabel.text = "Change taps maxed out!"
        } else if theLabel.text == "How you doin'??" {
            theLabel.text = "I want to change the button!"
        } else {
            theLabel.text = "Buttons are cool!"
        }
        
        print("Change tapped \(tapChangeCount) times")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.view.backgroundColor = UIColor.red
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

