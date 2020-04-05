//
//  ViewController.swift
//  Tippy
//
//  Created by aria javanmard on 4/4/20.
//  Copyright © 2020 aria javanmard. All rights reserved.
//

import UIKit
var Custom = 0.0
class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLablel: UILabel!
    @IBOutlet weak var p1Label: UILabel!
    @IBOutlet weak var p2Label: UILabel!
    @IBOutlet weak var p3Label: UILabel!
    @IBOutlet weak var p4Label: UILabel!
    @IBOutlet weak var p5Label: UILabel!
    @IBOutlet weak var p6Label: UILabel!
    @IBOutlet weak var p7Label: UILabel!
    @IBOutlet weak var p8Label: UILabel!
    
    @IBOutlet weak var segmentOut: UISegmentedControl!
    
    
    @IBAction func textField(_ sender: Any) {
        let percentTip = [0.1, 0.15, 0.2, Custom/100]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * percentTip[segmentOut.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLablel.text = String(format: "$%.2f", total)
        p1Label.text = String(format:"Tip:$%.2f, Bill:$%.2f, Total:$%.2f", tip, bill, total)
        p2Label.text = String(format:"Tip:$%.2f, Bill:$%.2f, Total:$%.2f", tip/2, bill/2, total/2)
        p3Label.text = String(format:"Tip:$%.2f, Bill:$%.2f, Total:$%.2f", tip/3, bill/3, total/3)
        p4Label.text = String(format:"Tip:$%.2f, Bill:$%.2f, Total:$%.2f", tip/4, bill/4, total/4)
        p5Label.text = String(format:"Tip:$%.2f, Bill:$%.2f, Total:$%.2f", tip/5, bill/5, total/5)
        p6Label.text = String(format:"Tip:$%.2f, Bill:$%.2f, Total:$%.2f", tip/6, bill/6, total/6)
        p7Label.text = String(format:"Tip:$%.2f, Bill:$%.2f, Total:$%.2f", tip/7, bill/7, total/7)
        p8Label.text = String(format:"Tip:$%.2f, Bill:$%.2f, Total:$%.2f", tip/8, bill/8, total/8)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        billField.becomeFirstResponder()
        billField.text = ""
        totalLablel.text = ""
        tipLabel.text = ""
        p1Label.text = ""
        p2Label.text = ""
        p3Label.text = ""
        p4Label.text = ""
        p5Label.text = ""
        p6Label.text = ""
        p7Label.text = ""
        p8Label.text = ""
        segmentOut.selectedSegmentIndex = 3
        Custom = UserDefaults.standard.double(forKey: "DoubleCustom")
    }
    override func viewDidAppear(_ animated: Bool) {
        billField.becomeFirstResponder()
    }


}

