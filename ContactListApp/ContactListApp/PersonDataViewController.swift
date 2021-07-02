//
//  PersonDataViewController.swift
//  ContactListApp
//
//  Created by Tagir Kabirov on 02.07.2021.
//

import UIKit

class PersonDataViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var firstNameLable: UILabel!
    @IBOutlet weak var secondNameLable: UILabel!
    @IBOutlet weak var phoneNumberLable: UILabel!
    @IBOutlet weak var infLable: UILabel!
    @IBOutlet weak var placeOfWork: UILabel!
    
    var person: PersonCellData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        infLable.text = person?.comment
        phoneNumberLable.text = person?.phoneNumber
        secondNameLable.text = person?.secondName
        firstNameLable.text = person?.firstName
        imageView.image = person?.personImg
        placeOfWork.text = person?.placeOfWork
        
    }
    

}
