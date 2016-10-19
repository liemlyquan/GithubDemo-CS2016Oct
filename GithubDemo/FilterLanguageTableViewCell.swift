//
//  FilterLanguageTableViewCell.swift
//  GithubDemo
//
//  Created by Pj Nguyen on 10/19/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

@objc protocol FilterLanguageTableViewCellDelegate {
    @objc optional func filterLanguageTableViewCell(filterLanguageTableViewCell: FilterLanguageTableViewCell, didChangeValue value: Bool)
}

class FilterLanguageTableViewCell: UITableViewCell {

    
    @IBOutlet weak var filterLable: UILabel!
    weak var delegate: FilterLanguageTableViewCellDelegate?
    
    @IBOutlet weak var switchLanguge: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
       
    }

    @IBAction func onSwitch(_ sender: AnyObject) {
        print("on")
        delegate?.filterLanguageTableViewCell!(filterLanguageTableViewCell: self, didChangeValue: sender.isOn)
    }
}
