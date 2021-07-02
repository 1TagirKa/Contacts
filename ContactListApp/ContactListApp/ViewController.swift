//
//  ViewController.swift
//  ContactListApp
//
//  Created by Tagir Kabirov on 02.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var infTF: UITextField!
    @IBOutlet var viewController: UIView!
    
    @IBAction func button(_ sender: Any) {
        if loginTF.text == "Admin" && passwordTF.text == "admin"{
                infTF.text = "ContactApp"
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let secondViewController = storyboard.instantiateViewController(withIdentifier: "ContactsViewController") as! ContactsViewController
                navigationController?.pushViewController(secondViewController, animated: true)
    }
        else{
            infTF.text = "Wrong password"
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}


