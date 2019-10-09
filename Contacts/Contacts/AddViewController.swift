//
//  AddViewController.swift
//  Contacts
//
//  Created by Basith on 30/09/19.
//  Copyright © 2019 TechPro. All rights reserved.
//

import UIKit

protocol AddContact {
    func addContact(name:String,number:String,email:String,photo:String)
}

class AddViewController: UIViewController {

    @IBOutlet weak var photoField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    var delegate : AddContact?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoField.text = "Image"
    }
    
    @IBAction func btnOnClick(_ sender: Any) {
        delegate?.addContact(name: nameField.text!, number: numberField.text!, email: emailField.text!, photo: photoField.text!)
        
//        let b = UIStoryboard(name : "Main", bundle: nil)
//        let vc = b.instantiateViewController(identifier: "ViewController")
//        self.present(vc, animated: true, completion: nil)
        
        self.dismiss(animated: true, completion: nil)
    }
}
