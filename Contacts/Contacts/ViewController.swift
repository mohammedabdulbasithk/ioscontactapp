//
//  ViewController.swift
//  Contacts
//
//  Created by Basith on 24/09/19.
//  Copyright © 2019 TechPro. All rights reserved.
//

import UIKit

protocol PeopleSelectionDelegate: class {
    func peopleSelected(name:String, photo:UIImage, number:String, mail:String)
}

class ViewController: UITableViewController,AddContact {
    func addContact(name: String, number: String, email: String, photo: String) {
        names.append(People(name: name, number: number, mail: email, image: UIImage(named: photo)!))
        tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    weak var delegate: PeopleSelectionDelegate?
    var names = [
        People(name: "SSS", number: "9645444591", mail: "me.ds@gmail.com", image: UIImage(named: "Image")!),
        People(name: "Basith", number: "9645444592", mail: "me.basithk@gmail.com", image: UIImage(named: "Image")!),
    ]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! AddViewController
        vc.delegate = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "celld")
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:  "celld" , for: indexPath)
        let show = self.names[indexPath.row]
        cell.textLabel?.text = show.name
        cell.imageView?.image = show.image
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedPeople = names[indexPath.row]
        let name = selectedPeople.name
        let mail = selectedPeople.mail
        let photo = selectedPeople.image
        let number = selectedPeople.number
        delegate?.peopleSelected(name:name, photo: photo, number:number, mail:mail)
        
        let b = UIStoryboard(name : "Main", bundle: nil)
        let vc = b.instantiateViewController(identifier: "ViewContactController")
        self.present(vc, animated: true, completion: nil)
    }


}

