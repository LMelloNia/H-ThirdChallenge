//
//  CustomCell.swift
//  H-ThirdChallenge
//
//  Created by 김시훈 on 2022/09/28.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var customLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
