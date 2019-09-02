//
//  CustomReportCell.swift
//  Practice
//
//  Created by FDC-MM11-Leah on 05/08/2019.
//  Copyright © 2019 FDC John Go. All rights reserved.
//

import UIKit

class CustomReportCell: UITableViewCell {
    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var locationPosted: UILabel!
    @IBOutlet weak var datePosted: UILabel!
    @IBOutlet weak var postTitle: UILabel!
    @IBOutlet weak var contentImage: UIImageView!
    @IBOutlet weak var like: UIView!
    @IBOutlet weak var dislike: UIView!
    @IBOutlet weak var likeCount: UILabel!
    @IBOutlet weak var dislikeCount: UILabel!
    @IBOutlet weak var contentMessage: UILabel!
    @IBOutlet weak var viewCount: UILabel!
    @IBOutlet weak var viewsView: UIView!
    @IBOutlet weak var contentImageConstraint: NSLayoutConstraint!
    @IBOutlet weak var contentMessageConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        DispatchQueue.main.async {
            self.profileImage.layer.cornerRadius = self.profileImage.bounds.size.width / 2.0
            self.profileImage.clipsToBounds = true
            
            self.like.layer.cornerRadius = 5
            self.like.layer.masksToBounds = true
            self.like.layer.borderWidth = 1
            self.like.layer.borderColor = UIColor.black.cgColor
            
            self.dislike.layer.cornerRadius = 5
            self.dislike.layer.masksToBounds = true
            self.dislike.layer.borderWidth = 1
            self.dislike.layer.borderColor = UIColor.black.cgColor
            
            let maskPath = UIBezierPath(roundedRect: self.viewsView.bounds, byRoundingCorners: [.topLeft], cornerRadii: CGSize(width: 10, height: 10))
            let shape = CAShapeLayer()
            shape.path = maskPath.cgPath
            self.viewsView.layer.mask = shape
        }
    }
}
