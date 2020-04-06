//
//  ViewController.swift
//  Tippy
//
//  Created by aria javanmard on 4/4/20.
//  Copyright © 2020 aria javanmard. All rights reserved.
//

import UIKit
var Custom = 0.0
var bill = 0.0
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
        let currencyFormatter = NumberFormatter()
        currencyFormatter.usesGroupingSeparator = true
        currencyFormatter.numberStyle = .currency
        currencyFormatter.locale = Locale.current
        let percentTip = [0.1, 0.15, 0.2, Custom/100]
        var bill = Double(billField.text!) ?? 0
        currencyFormatter.string(from: NSNumber(value: bill))
        var tip = bill * percentTip[segmentOut.selectedSegmentIndex]
        var total = bill + tip
       

       
            
            
        if let formattedTotal = currencyFormatter.string(from: total as NSNumber){
            
            totalLablel.text = "\(formattedTotal) "
            p1Label.text = "\(formattedTotal) "

            }
        if let formattedBill = currencyFormatter.string(from: bill as NSNumber){
                p1Label.text! += "\(formattedBill) "
            }
        if let formattedTip = currencyFormatter.string(from: tip as NSNumber) {
                tipLabel.text = "\(formattedTip)"
                p1Label.text! += "\(formattedTip)"
            }
            
        
        
            tip = tip/2
            bill = bill/2
            total = total/2
            
        if let formattedTotal = currencyFormatter.string(from: total as NSNumber){
            
            p2Label.text = "\(formattedTotal) "

            }
        if let formattedBill = currencyFormatter.string(from: bill as NSNumber){
                p2Label.text! += "\(formattedBill) "
            }
        if let formattedTip = currencyFormatter.string(from: tip as NSNumber) {
                p2Label.text! += "\(formattedTip)"
            }
            tip = tip*2
            bill = bill*2
            total = total*2
        
        
            tip = tip/3
            bill = bill/3
            total = total/3
            
        if let formattedTotal = currencyFormatter.string(from: total as NSNumber){
            
            p3Label.text = "\(formattedTotal) "

            }
        if let formattedBill = currencyFormatter.string(from: bill as NSNumber){
                p3Label.text! += "\(formattedBill) "
            }
        if let formattedTip = currencyFormatter.string(from: tip as NSNumber) {
                p3Label.text! += "\(formattedTip)"
            }
            tip = tip*3
            bill = bill*3
            total = total*3
        
            tip = tip/4
            bill = bill/4
            total = total/4
            
        if let formattedTotal = currencyFormatter.string(from: total as NSNumber){
            
            p4Label.text = "\(formattedTotal) "

            }
        if let formattedBill = currencyFormatter.string(from: bill as NSNumber){
                p4Label.text! += "\(formattedBill) "
            }
        if let formattedTip = currencyFormatter.string(from: tip as NSNumber) {
                p4Label.text! += "\(formattedTip)"
            }
            tip = tip*4
            bill = bill*4
            total = total*4
        
        
            tip = tip/5
            bill = bill/5
            total = total/5
            
        if let formattedTotal = currencyFormatter.string(from: total as NSNumber){
            
            p5Label.text = "\(formattedTotal) "

            }
        if let formattedBill = currencyFormatter.string(from: bill as NSNumber){
                p5Label.text! += "\(formattedBill) "
            }
        if let formattedTip = currencyFormatter.string(from: tip as NSNumber) {
                p5Label.text! += "\(formattedTip)"
            }
            tip = tip*5
            bill = bill*5
            total = total*5
        
        
            tip = tip/6
            bill = bill/6
            total = total/6
            
        if let formattedTotal = currencyFormatter.string(from: total as NSNumber){
            
            p6Label.text = "\(formattedTotal) "

            }
        if let formattedBill = currencyFormatter.string(from: bill as NSNumber){
                p6Label.text! += "\(formattedBill) "
            }
        if let formattedTip = currencyFormatter.string(from: tip as NSNumber) {
                p6Label.text! += "\(formattedTip)"
            }
            tip = tip*6
            bill = bill*6
            total = total*6
        
        
            tip = tip/7
            bill = bill/7
            total = total/7
            
        if let formattedTotal = currencyFormatter.string(from: total as NSNumber){
            
            p7Label.text = "\(formattedTotal) "

            }
        if let formattedBill = currencyFormatter.string(from: bill as NSNumber){
               p7Label.text! += "\(formattedBill) "
            }
        if let formattedTip = currencyFormatter.string(from: tip as NSNumber) {
               
                p7Label.text! += "\(formattedTip)"
            }
            tip = tip*7
            bill = bill*7
            total = total*7
        
        
            tip = tip/8
            bill = bill/8
            total = total/8
            
        if let formattedTotal = currencyFormatter.string(from: total as NSNumber){
            
            
            p8Label.text = "\(formattedTotal) "

            }
        if let formattedBill = currencyFormatter.string(from: bill as NSNumber){
                p8Label.text! += "\(formattedBill) "
            }
        if let formattedTip = currencyFormatter.string(from: tip as NSNumber) {
                
                p8Label.text! += "\(formattedTip)"
            }
            tip = tip*8
            bill = bill*8
            total = total*8
        
        
    
        UserDefaults.standard.set(bill, forKey: "Doublebill")
     
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        billField.becomeFirstResponder()
        segmentOut.selectedSegmentIndex = 3
        Custom = UserDefaults.standard.double(forKey: "DoubleCustom")
        billField.text = UserDefaults.standard.string(forKey: "Doublebill")
        bill = UserDefaults.standard.double(forKey: "Doublebill")
        textField(self)
    }
    override func viewDidAppear(_ animated: Bool) {
        billField.becomeFirstResponder()
        
    }

}

