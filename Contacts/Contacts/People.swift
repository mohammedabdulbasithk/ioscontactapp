//
//  People.swift
//  Contacts
//
//  Created by Basith on 26/09/19.
//  Copyright © 2019 TechPro. All rights reserved.
//

import Foundation
import UIKit

class People {
  let name: String
  let number: String
  let mail: String
  let image: UIImage

    init(name: String, number: String, mail: String, image: UIImage) {
    self.name = name
    self.number = number
    self.mail = mail
    self.image = image
  }
}
