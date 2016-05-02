//
//  ViewController.swift
//  RegisterTesting
//
//  Created by FolkSonG on 2/5/59.
//  Copyright © พ.ศ. 2559 Kitsana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtAddress: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonSignUp_OnClick() {
        if txtPassword.text == txtConfirmPassword.text{
            let kumuAPI = Kumulos()
            kumuAPI.createUserWithUsername(txtUsername.text, andPassword: txtPassword.text, andEmail: txtEmail.text, andAddress: txtAddress.text)
        }
    }
    
    @IBAction func buttonCancel_OnClick() {
        txtUsername.text = ""
        txtPassword.text = ""
        txtConfirmPassword.text = ""
        txtEmail.text = ""
        txtAddress.text = ""
    }

}

