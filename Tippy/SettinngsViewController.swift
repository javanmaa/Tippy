//
//  SettinngsViewController.swift
//  Tippy
//
//  Created by aria javanmard on 4/5/20.
//  Copyright © 2020 aria javanmard. All rights reserved.
//

import UIKit

class SettinngsViewController: UIViewController {
    @IBOutlet weak var customField: UITextField!
    
    
    @IBAction func customFieldAction(_ sender: Any) {
        Custom = Double(customField.text!) ?? 0
        UserDefaults.standard.set(Custom, forKey: "DoubleCustom")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
