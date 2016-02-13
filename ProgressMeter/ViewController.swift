//
//  ViewController.swift
//  ProgressMeter
//
//  Created by Kapil Rathore on 13/02/16.
//  Copyright © 2016 Kapil Rathore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calMeter: UIProgressView!
    @IBOutlet weak var check1: UISwitch!
    @IBOutlet weak var check2: UISwitch!
    @IBOutlet weak var check3: UISwitch!
    @IBOutlet weak var check4: UISwitch!
    @IBOutlet weak var calValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        check1.setOn(false, animated: true)
        check2.setOn(false, animated: true)
        check3.setOn(false, animated: true)
        check4.setOn(false, animated: true)
        
        calMeter.progress = 0.0
        
        calValue.text = "0.0"
        
        check1.addTarget(self, action: Selector("stateChanged:"), forControlEvents: UIControlEvents.ValueChanged)
        check2.addTarget(self, action: Selector("stateChanged:"), forControlEvents: UIControlEvents.ValueChanged)
        check3.addTarget(self, action: Selector("stateChanged:"), forControlEvents: UIControlEvents.ValueChanged)
        check4.addTarget(self, action: Selector("stateChanged:"), forControlEvents: UIControlEvents.ValueChanged)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func stateChanged(switchState: UISwitch) {
        if switchState.on {
            calMeter.progress += 0.25
        } else {
            calMeter.progress -= 0.25
        }
        calValue.text = String(1000*calMeter.progress)
    }
}

