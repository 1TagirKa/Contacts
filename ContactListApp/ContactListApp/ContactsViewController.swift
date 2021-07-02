//
//  ContactsViewController.swift
//  ContactListApp
//
//  Created by Tagir Kabirov on 02.07.2021.
//

import UIKit

class ContactsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var contactsData: [PersonCellData] = [PersonCellData(firstName: "Amin",                                      secondName: "Dowling",
                        phoneNumber: "+7(347)519-67-99",
                        placeOfWork: "Pest controller Comp",
                        comment: "Some inf",
                        personImg: UIImage(named: "person-1") ?? UIImage()),
        PersonCellData(firstName: "Niam",
                       secondName: "Shepherd",
                       phoneNumber: "+7(3452)13-32-22",
                       placeOfWork: "Tailor Comp",
                       comment: "Some inf",
                       personImg: UIImage(named: "person-1") ?? UIImage()),
        PersonCellData(firstName: "Davey",
                       secondName: "Acosta",
                       phoneNumber: "+7(391)113-07-53",
                       placeOfWork: "Refuse collector Comp",
                       comment: "Some inf",
                       personImg: UIImage(named: "person-1") ?? UIImage()),
        PersonCellData(firstName: "Rohit",
                       secondName: "Knight",
                       phoneNumber: "+7(8552)43-26-25",
                       placeOfWork: "Computer programmer Comp",
                       comment: "Some inf",
                       personImg: UIImage(named: "person-1") ?? UIImage()),
        PersonCellData(firstName: "David",
                       secondName: "Shepherd",
                       phoneNumber: "+7(3452)13-32-22",
                       placeOfWork: "Tailor Comp",
                       comment: "Some inf",
                       personImg: UIImage(named: "person-1") ?? UIImage()),
        PersonCellData(firstName: "Difar",
                       secondName: "Acosta",
                       phoneNumber: "+7(391)113-07-53",
                       placeOfWork: "Refuse collector Comp",
                       comment: "Some inf",
                       personImg: UIImage(named: "person-1") ?? UIImage()),
        PersonCellData(firstName: "Korut",
                       secondName: "Knight",
                       phoneNumber: "+7(8552)43-26-25",
                       placeOfWork: "Computer programmer Comp",
                       comment: "Some inf",
                       personImg: UIImage(named: "person-1") ?? UIImage()),
        PersonCellData(firstName: "Niam",
                       secondName: "Shepherd",
                       phoneNumber: "+7(3452)13-32-22",
                       placeOfWork: "Tailor Comp",
                       comment: "Some inf",
                       personImg: UIImage(named: "person-1") ?? UIImage()),
        PersonCellData(firstName: "Davey",
                       secondName: "Acosta",
                       phoneNumber: "+7(391)113-07-53",
                       placeOfWork: "Refuse collector Comp",
                       comment: "Some inf",
                       personImg: UIImage(named: "person-1") ?? UIImage()),
        PersonCellData(firstName: "Rohit",
                       secondName: "Knight",
                       phoneNumber: "+7(8552)43-26-25",
                       placeOfWork: "Computer programmer Comp",
                       comment: "Some inf",
                       personImg: UIImage(named: "person-1") ?? UIImage())
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }


}
extension ContactsViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        guard let contactViewCon = storyboard?.instantiateViewController(withIdentifier: "PersonDataViewController")
                as? PersonDataViewController else { return }
        contactViewCon.person = contactsData[indexPath.row]
        
        present(contactViewCon, animated: true)
        
    }
}

extension ContactsViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactsData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactTableViewCell", for: indexPath) as? ContactTableViewCell else {
            return UITableViewCell()
        }
        cell.setData(person: contactsData[indexPath.row])
        return cell
    }
    
    
}

struct PersonCellData{
    let firstName: String
    let secondName: String
    let phoneNumber: String
    let placeOfWork: String
    let comment: String
    let personImg: UIImage
}
