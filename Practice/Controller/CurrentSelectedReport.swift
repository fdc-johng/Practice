//
//  TableViewController.swift
//  Practice
//
//  Created by FDC-MM11-Leah on 06/08/2019.
//  Copyright © 2019 FDC John Go. All rights reserved.
//

import UIKit

class CurrentSelectedReport: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var selectedReport: UITableView!
    
    let report: Report? = DataManager.shared.selectedReport
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedReport.delegate = self
        selectedReport.dataSource = self
        
        selectedReport.register(UINib(nibName: "ReportCell", bundle: nil), forCellReuseIdentifier: "reportCell")
        
        configureTable()
        
    }
    
    // MARK: - Table view data source
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reportCell", for: indexPath) as! CustomReportCell
        
        // Configure the cell...
        if indexPath.row == 0 {
            
            cell.contentMessage.isHidden = false
            cell.contentMessageConstraint.constant = 3
            cell.contentImageConstraint.constant = 10
            
            cell.userName.text = report?.reporterName
            cell.locationPosted.text = (report?.location)! + " • "
            cell.datePosted.text = report?.date
            cell.profileImage.image = UIImage(named: report?.imageURL ?? "no-image")
            cell.postTitle.text = report?.title
            cell.contentMessage.text = report?.message
            cell.contentImage.image = UIImage(named: report?.contentImage ?? "no-image")
            cell.likeCount.text = AppUtility.reactionConverter(report?.likes)
            cell.dislikeCount.text = AppUtility.reactionConverter(report?.dislikes)
            cell.viewCount.text = AppUtility.reactionConverter(report?.viewCount)
        }
        
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func configureTable() {
        selectedReport.rowHeight = UITableView.automaticDimension
        selectedReport.estimatedRowHeight = 600
        
        selectedReport.separatorStyle = .none
    }
    
}
