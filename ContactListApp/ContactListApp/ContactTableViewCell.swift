//
//  ContactTableViewCell.swift
//  ContactListApp
//
//  Created by Tagir Kabirov on 02.07.2021.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    @IBOutlet weak var firstNameLable: UILabel!
    @IBOutlet weak var phoneNumberLable: UILabel!
    
    func setData(person: PersonCellData){
        firstNameLable.text = person.firstName
        phoneNumberLable.text = person.phoneNumber
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
