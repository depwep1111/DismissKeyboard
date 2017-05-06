//
//  ViewController.swift
//  DismissKeyboard
//
//  Created by tran trung thanh on 5/6/17.
//  Copyright © 2017 tran trung thanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    @IBAction func userTappedBackground(sender: AnyObject) {
        for view in self.view.subviews as! [UIView] {
            if let textField = view as? UITextField {
                textField.resignFirstResponder()
            }
        }
    }

}

