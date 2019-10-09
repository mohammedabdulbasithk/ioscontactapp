//
//  ViewContactController.swift
//  Contacts
//
//  Created by Basith on 26/09/19.
//  Copyright © 2019 TechPro. All rights reserved.
//

import UIKit

class ViewContactController: UIViewController,PeopleSelectionDelegate {
    @IBOutlet weak var nameView: UILabel!
    @IBOutlet weak var emailView: UILabel!
    @IBOutlet weak var contactView: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func peopleSelected(name: String, photo: UIImage, number: String, mail: String) {
        //loadViewIfNeeded()
        nameView.text = name
        emailView.text = mail
        imageView.image = photo
        contactView.text = number
        refreshUI()
    }
    var people: People? {
      didSet {
        refreshUI()
      }
    }
    private func refreshUI() {
      //loadViewIfNeeded()
      nameView.text = people?.name
      emailView.text = people?.mail
      imageView.image = people?.image
      contactView.text = people?.number
    }
    

}

