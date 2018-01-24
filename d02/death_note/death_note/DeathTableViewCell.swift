//
//  DeathTableViewCell.swift
//  death_note
//
//  Created by Eren Ozdek on 13/06/2017.
//  Copyright © 2017 Eren Ozdek. All rights reserved.
//

import UIKit

class DeathTableViewCell: UITableViewCell {

    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var deathTxt: UITextView!
    //@IBOutlet weak var deathTxt: UILabel!
    
    var death : (Data)? {
        didSet {
            if let d = death {
//                let date = DateFormatter()
//                date.dateStyle = .medium
                nameLbl?.text = d.name
                dateLbl?.text = d.date //date.string(from: d.date as Date)
                deathTxt?.text = d.death
            }
        }
    }
}
