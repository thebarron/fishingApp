//
//  ViewController.swift
//  iLure
//
//  Created by Barron Link on 6/4/15.
//  Copyright (c) 2015 Motive. All rights reserved.
//

import UIKit

class BodyOfWaterViewController: UIViewController {
    
    var workingParameters = FishingParameters().currentParameters
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "lakeSelectedSegue" {
            let waterClarityController = segue.destinationViewController as! WaterClarityViewController
            workingParameters["waterType"] = "Lake"
            var currentWaterType = workingParameters["waterType"]!
            waterClarityController.waterType = "\(currentWaterType) Selected"
            waterClarityController.workingParameters = workingParameters
        }
        if segue.identifier == "pondSelectedSegue" {
            let waterClarityController = segue.destinationViewController as! WaterClarityViewController
            workingParameters["waterType"] = "Pond"
            var currentWaterType = workingParameters["waterType"]!
            waterClarityController.waterType = "\(currentWaterType) Selected"
            waterClarityController.workingParameters = workingParameters
        }
    }
    
    
    
    

}

