//
//  WaterClarityViewController.swift
//  iLure
//
//  Created by Barron Link on 6/4/15.
//  Copyright (c) 2015 Motive. All rights reserved.
//

import UIKit

class WaterClarityViewController: UIViewController {

    @IBOutlet weak var waterTypeLabel: UILabel!
    var waterType: String = ""
    var workingParameters = ["" : ""]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        waterTypeLabel.text = waterType
        println(workingParameters)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // Pulling in variables via segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "clearWaterSelectedSegue" {
            let skiesController = segue.destinationViewController as! SkiesViewController
            workingParameters["waterClarity"] = "Clear"
            var currentSkiesType = workingParameters["waterType"]!
            skiesController.waterClarity = "\(currentSkiesType)"
            skiesController.workingParameters = workingParameters
        }
        if segue.identifier == "stainedWaterSelectedSegue" {
            let skiesController = segue.destinationViewController as! SkiesViewController
            workingParameters["waterClarity"] = "Stained"
            var currentSkiesType = workingParameters["waterType"]!
            skiesController.waterClarity = "\(currentSkiesType)"
            skiesController.workingParameters = workingParameters
        }
        if segue.identifier == "muddyWaterSelectedSegue" {
            let skiesController = segue.destinationViewController as! SkiesViewController
            workingParameters["waterClarity"] = "Muddy"
            var currentSkiesType = workingParameters["waterType"]!
            skiesController.waterClarity = "\(currentSkiesType)"
            skiesController.workingParameters = workingParameters
        }
    }
}