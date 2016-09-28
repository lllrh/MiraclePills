//
//  ViewController.swift
//  MiraclePill
//
//  Created by Rong Hui Lu on 2016-09-26.
//  Copyright © 2016 Rong Hui Lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var StatePicker: UIPickerView!
    @IBOutlet weak var StatePickerButton: UIButton!
    @IBOutlet weak var CountryTitle: UILabel!
    @IBOutlet weak var CountryText: UITextField!
    @IBOutlet weak var BuyButton: UIImageView!
    
    let states = ["AB", "BC", "MB", "NB", "NL", "NS", "NT", "NU", "ON", "PE", "QC", "SK", "YT"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        StatePicker.dataSource = self
        StatePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func StateButtonPressed(_ sender: AnyObject) {
        StatePicker.isHidden = false
        CountryTitle.isHidden=true
        CountryText.isHidden=true
        BuyButton.isHidden=true
        
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        StatePickerButton.setTitle(states[row], for: UIControlState())
        StatePicker.isHidden = true
        CountryTitle.isHidden=false
        CountryText.isHidden=false
        BuyButton.isHidden=false
    }
}

