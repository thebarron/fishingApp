//
//  windViewController.swift
//  iLure
//
//  Created by Barron Link on 6/5/15.
//  Copyright (c) 2015 Motive. All rights reserved.
//

import UIKit

class WindViewController: UIViewController {

    @IBOutlet weak var skiesLabel: UILabel!
    var waterClarity: String = ""
    var waterType: String = ""
    var skiesType: String = ""
    var workingParameters = ["" : ""]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var workingWaterType = workingParameters["waterType"]!
        var workingClarity = workingParameters["waterClarity"]!
        var workingSkiesType = workingParameters["skiesType"]!
        
        skiesLabel.text = "\(workingWaterType) / \(workingClarity) / \(workingSkiesType) "
        println(workingParameters)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
