//
//  CustomCommentCell.swift
//  Practice
//
//  Created by FDC-MM11-Leah on 07/08/2019.
//  Copyright © 2019 FDC John Go. All rights reserved.
//

import UIKit

class CustomCommentCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var timePosted: UILabel!
    @IBOutlet weak var commentLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        DispatchQueue.main.async {
            self.profileImage.layer.cornerRadius = self.profileImage.bounds.size.width / 2.0
            self.profileImage.clipsToBounds = true
        }
    }    
}
