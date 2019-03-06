//
//  ViewController.swift
//  jukebox
//
//  Created by Ginigeme, Benn Junior N on 2/25/19.
//  Copyright © 2019 Ginigeme, Benn Junior N. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var name:String = ""
    var chars:Int = Int(arc4random_uniform(10) + 2)
    var beyonce:Int = 0
    var chance:Int = 0
    var steph:Int = 0
    var kobe:Int = 0
    var wilt:Int = 0
    var total:Int = 0
    @IBOutlet weak var myTotal: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    @IBAction func results(_ sender: Any) {
        total = beyonce + chance + steph + kobe + wilt
        if(total <= 1) {
            myTotal.text = "Maybe you should do more research"
            myImage.image = UIImage(named: "mamba")
        }
        else if(total > 1 && total <= 4){
            myTotal.text = "You pretty well-rounded."
           myImage.image = UIImage(named: "yonce")
        }
        else {
            myTotal.text = "You're a JukeBox genius!"
             myImage.image = UIImage(named: "denzel")
        }
        
    }
    @IBAction func selectBeyonce(_ sender: UISwitch) {
        if sender.isOn {
            beyonce = 0
        }
        else {
            beyonce = 1
        }
        
    }
    
    @IBAction func selectChance(_ sender: UISwitch) {
        if sender.isOn {
            chance = 0
        }
        else {
            chance = 1
        }
        
    }
    
    @IBAction func selectSteph(_ sender: UISwitch) {
        if sender.isOn {
            steph = 0
        }
        else {
            steph = 1
        }
        
    }
    
    
    @IBAction func selectKobe(_ sender: UISwitch) {
        if sender.isOn {
            kobe = 1
        }
        else {
            kobe = 0
        }
    }
    
    
    @IBAction func selectWilt(_ sender: UISwitch) {
        if sender.isOn {
            wilt = 1
        }
        else {
            wilt = 0
        }
    }
    
    
    
   
    
    
    
    
    
    
    @IBOutlet weak var myGreeting: UILabel!
    
    
    @IBOutlet weak var myName: UITextField!
    @IBAction func mySubmit(_ sender: Any) {
        let name = myName.text!
        chars = name.count
        myGreeting.text = "Welcome, \(name)"
        myName.resignFirstResponder()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

