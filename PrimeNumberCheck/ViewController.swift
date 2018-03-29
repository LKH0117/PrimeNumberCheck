//
//  ViewController.swift
//  PrimeNumberCheck
//
//  Created by dit on 2018. 3. 29..
//  Copyright © 2018년 dit. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var txtField: UITextField!
    @IBOutlet weak var lblprime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txtField.delegate = self
        txtField.placeholder = "text"
        txtField.clearButtonMode = UITextFieldViewMode.whileEditing
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool{
        return true
    }
    func textFieldShouldEndEditing(_ textField:
        UITextField) -> Bool{
        return true
    }
    
    @IBAction func btCheck(_ sender: Any) {
        var aprime = true
        let a = Int(txtField.text!);
        
        if a == 1 {
            aprime = false
        }
        if a != 1 && a != 2 {
            for i in 2 ..< a! {
                if a! % i == 0 {
                    aprime = false
                }
            }
        }
        if aprime == true {
            lblprime.text = "Prime Number"
        } else {
            lblprime.text = "Not Prime Number"
        }
        txtField.resignFirstResponder()
    }
    @IBAction func btReset(_ sender: Any) {
        txtField.text = ""
        lblprime.text = ""
        txtField.resignFirstResponder()
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool{
        return true
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        txtField.resignFirstResponder()
        return true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

