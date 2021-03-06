//
//  ViewController.swift
//  MiraclePill
//
//  Created by chris on 4/7/17.
//  Copyright © 2017 chriso.kicks-ass.net. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet var statePicker: UIPickerView!
    @IBOutlet var statePickerPtn: UIButton!
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York", "Georgia", "Mississippi", "Washington", "Colorado"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
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
        statePickerPtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
    }
}

