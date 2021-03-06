//
//  ViewController.swift
//  Postcard
//
//  Created by Tuan Ho on 5/4/15.
//  Copyright (c) 2015 Novanuer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    @IBOutlet weak var nameLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
      //adding comment to to test github commits
      messageLabel.hidden = false
      nameLable.hidden = false
      messageLabel.text = enterMessageTextField.text
      messageLabel.textColor = UIColor.redColor()
      nameLable.text = enterNameTextField.text
      nameLable.textColor = UIColor.blueColor()
      enterMessageTextField.text = ""
      enterNameTextField.text = ""
      enterMessageTextField.resignFirstResponder()
      enterNameTextField.resignFirstResponder()
      mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

