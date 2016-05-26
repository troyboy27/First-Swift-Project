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
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var widthLabel: UILabel!
    @IBOutlet weak var widthSlider: UISlider!
    @IBOutlet weak var totalArea: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    
        let roundedHeight : Int = Int(heightSlider.value)
        heightLabel.text = "Height: \(roundedHeight) ft"
        let roundedWidth : Int = Int(widthSlider.value)
        widthLabel.text = "Width: \(roundedWidth) ft"
        
        
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
    
    func carpetCostCalculator(length length: Int, width: Int, carpetColor: String = "tan") -> (price: Int, carpetColor: String) {
        // Gray Carpet - $1/sq ft
        // Tan Carpet - $2/sq ft
        // Deep Blue Carpet - $4/sq ft
        
        let area = calculateArea(length, width: width)
        
        var price: Int
        
        switch carpetColor {
        case "gray": price = area * 1
        case "tan": price = area * 2
        case "blue": price = area * 4
        default: price = 0
        }
        
        return (price, carpetColor)
    }
    
    func calculateArea(length: Int, width: Int) -> Int {
        let area = length * width
        return area
    }
    
    func updateAreasLabelsAndCost() {
        
        let calculateTotalArea : Int = self.calculateArea(Int(self.heightSlider.value), width: Int(self.widthSlider.value))
        totalArea.text = "\(calculateTotalArea)"
        
        
    }

    @IBAction func heightSliderChanged(sender: AnyObject) {
        
        let heightSlider : UISlider = sender as! UISlider
        let roundedHeight : Int = Int(heightSlider.value)
        heightLabel.text = "Height: \(roundedHeight) ft"
        
        self.updateAreasLabelsAndCost()
        
    }
    

    @IBAction func widthSliderChanged(sender: AnyObject) {
        
        let widthSlider : UISlider = sender as! UISlider
        let roundedWidth : Int = Int(widthSlider.value)
        widthLabel.text = "Width: \(roundedWidth) ft"
        
        self.updateAreasLabelsAndCost()
        
    }
    
    
}




