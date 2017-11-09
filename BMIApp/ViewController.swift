//
//  ViewController.swift
//  BMIApp
//
//  Created by AirNP on 11/9/2560 BE.
//  Copyright © 2560 AirNP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtw: UITextField!
    
    @IBOutlet weak var txth: UITextField!
    
    @IBOutlet weak var lblbmi: UILabel!
    var h:Float = 0.0
    var w:Float = 0.0
    var result:Float = 0.0
    var criteria:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showBMI(_ sender: Any) {
        
        CalculateBMI()
        
    }
    
    func CalculateBMI(){
        w = Float(txtw.text!)!
        h  = Float(txth.text!)!
        h = h/100
        result = (w/(h*h))
        
        lblbmi.text = String(format: "%.2f",result)
        
        if result >= 30{
            criteria = "Fat LV3"
        }else if result >= 25 {
            criteria = "Fat LV2"
        }else if result >= 23 {
            criteria = "Fat LV1"
        }else if result >= 18.50{
            criteria = "Normal"
        }else{
            criteria = "Thin"
        }
        lblbmi.text = lblbmi.text!+" : "+criteria
     
    }

}

