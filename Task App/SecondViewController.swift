//
//  SecondViewController.swift
//  Task App
//
//  Created by Wesley on 7/11/18.
//  Copyright © 2018 Wesley. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnAddTask(sender : UIButton) {
        if(txtTask.text == "") {
            // task title is blank, do not add a record
        } else {
            // add record
            //print(txtTask.text)
            //print(txtDesc.text)
            taskMgr.addTask(name: txtTask.text!, desc: txtDesc.text!)
            
            // dismiss keyboard and reset fields
            self.view.endEditing(true)
            txtTask.text = nil
            txtDesc.text = nil
        }
    }
    
    func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

