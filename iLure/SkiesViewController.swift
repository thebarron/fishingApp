//
//  SkiesViewController.swift
//  iLure
//
//  Created by Barron Link on 6/4/15.
//  Copyright (c) 2015 Motive. All rights reserved.
//

import UIKit

class SkiesViewController: UIViewController {


    @IBOutlet weak var waterClarityLabel: UILabel!
    var waterClarity: String = ""
    var waterType: String = ""
    var workingParameters = ["" : ""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var workingWaterType = workingParameters["waterType"]!
        var workingClarity = workingParameters["waterClarity"]!
        
        waterClarityLabel.text = "\(workingWaterType) / \(workingClarity)"
        println(workingParameters)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // Pulling in variables via segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "blueSkySelectedSegue" {
            let windController = segue.destinationViewController as! WindViewController
            workingParameters["skiesType"] = "Blue"
            var currentSkiesType = workingParameters["skiesType"]!
            windController.skiesType = "\(currentSkiesType)"
            windController.workingParameters = workingParameters
        }
        if segue.identifier == "overcastSkySelectedSegue" {
            let windController = segue.destinationViewController as! WindViewController
            workingParameters["skiesType"] = "Overcast"
            var currentSkiesType = workingParameters["skiesType"]!
            windController.skiesType = "\(currentSkiesType)"
            windController.workingParameters = workingParameters
        }
        if segue.identifier == "stormySkySelectedSegue" {
            let windController = segue.destinationViewController as! WindViewController
            workingParameters["skiesType"] = "Stormy"
            var currentSkiesType = workingParameters["skiesType"]!
            windController.skiesType = "\(currentSkiesType)"
            windController.workingParameters = workingParameters
        }
    }

    
}
