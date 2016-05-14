//
//  ViewController.swift
//  First Project
//
//  Created by Troy Abel on 4/7/16.
//  Copyright © 2016 Troy Abel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var names: [String] = ["Troy", "Ricky", "Donald", "Jesse", "Joan", "Daniel", "Alexa"]
    var nameSpot : Int = 0;

    @IBOutlet weak var announcementLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func changeNameClicked(sender: AnyObject) {
        print("Hi, I clicked this button!")

        nameSpot += 1
        
        print("nameSpot: \(nameSpot), nameSpot Remaindered: \(nameSpot % names.count), name: \(names[nameSpot % names.count])")
        
        announcementLabel.text = "\(names[nameSpot % names.count])'s First App"
        
        
    }

}

