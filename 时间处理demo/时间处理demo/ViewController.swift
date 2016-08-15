//
//  ViewController.swift
//  时间处理
//
//  Created by xiaofans on 16/8/11.
//  Copyright © 2016年 xiaofan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var dayTextField: UITextField!
    @IBOutlet weak var hourTextField: UITextField!
    @IBOutlet weak var minuteTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var showLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func showButtonClick() {
        
        let createAtStr = "\(monthTextField.text!) \(dayTextField.text!) \(hourTextField.text!):\(minuteTextField.text!):\(secondTextField.text!) +0800 \(yearTextField.text!)"
                
        let createText = NSDate.createrDateString(createAtStr)
        
        showLabel.text = createText
    }
    
    
    
    
}











