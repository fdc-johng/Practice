//
//  ReportListView.swift
//  Practice
//
//  Created by FDC-MM11-Leah on 05/08/2019.
//  Copyright © 2019 FDC John Go. All rights reserved.
//

import UIKit

class ReportViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var reportList: [Report] = [Report]()

    @IBOutlet var reportTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reportTableView.delegate = self
        reportTableView.dataSource = self
        
        reportTableView.register(UINib(nibName: "ReportCell", bundle: nil), forCellReuseIdentifier: "customReportCell")
        
        retrieveReports()
        configureTable()
    }

    // MARK: - Table view data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reportList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customReportCell", for: indexPath) as! CustomReportCell

        // Configure the cell...
        cell.userName.text = reportList[indexPath.row].reporterName
        cell.locationPosted.text = reportList[indexPath.row].location! + " • "
        cell.datePosted.text = reportList[indexPath.row].date
        cell.profileImage.image = UIImage(named: reportList[indexPath.row].imageURL ?? "no-image")
        cell.postTitle.text = reportList[indexPath.row].title
        cell.contentImage.image = UIImage(named: reportList[indexPath.row].contentImage ?? "no-image")
        cell.likeCount.text = AppUtility.reactionConverter(reportList[indexPath.row].likes)
        cell.dislikeCount.text = AppUtility.reactionConverter(reportList[indexPath.row].dislikes)
        cell.viewCount.text = AppUtility.reactionConverter(reportList[indexPath.row].viewCount)
       
        cell.selectionStyle = .none

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        DataManager.shared.selectedReport = reportList[indexPath.row]
        performSegue(withIdentifier: "goToReport", sender: self)
    }
    
    func configureTable() {
        reportTableView.rowHeight = UITableView.automaticDimension
        reportTableView.estimatedRowHeight = 600
        
        reportTableView.separatorStyle = .none
    }
    
    func retrieveReports() {
        
        var report = Report()
        report.imageURL = "man-avatar"
        report.reporterName = "John Ellie Go"
        report.location = "Cebu City, Cebu"
        report.date = "July 02, 1998"
        report.title = "Test Title"
        report.contentImage = "lights"
        report.message = "Looooooooooooooooonggggg texttttttttt waaaaaaaaaaaaaaaaaaaaaaaan!!!!!!"
        report.likes = 183400
        report.dislikes = 11
        report.viewCount = 203010
        reportList.append(report)
        
        report.imageURL = "man-avatar-2"
        report.reporterName = "Skye Skype"
        report.location = "Talisay City, Cebu"
        report.date = "August 1, 1990"
        report.title = "Hahahha"
        report.contentImage = "flower"
        report.message = "Looooooooooooooooonggggg texttttttttt!!!!!!"
        report.likes = 1435000
        report.dislikes = 32
        report.viewCount = 2015012
        reportList.append(report)
        
        report.imageURL = "man-avatar"
        report.reporterName = "Wachili Mansi"
        report.location = "Manila, Philippines"
        report.date = "August 4, 2019"
        report.title = "Balita balita, isda nawala!"
        report.contentImage = "nature"
        report.message = "I'm building an app using swift in the latest version of Xcode 6, and would like to know how I can modify my button so that it can have a rounded border that I could adjust myself if needed. Once that's done, how can I change the color of the border itself without adding a background to it? In other words I want a slightly rounded button with no background, only a 1pt border of a certain color.!"
        report.likes = 641
        report.dislikes = 5
        report.viewCount = 984
        reportList.append(report)
        
        report.imageURL = "man-avatar-2"
        report.reporterName = "Sushi Manju"
        report.location = "Sydney, Australia"
        report.date = "August 4, 2019"
        report.title = "CLLocationManager!"
        report.contentImage = "over-view"
        report.message = "You use instances of this class to configure, start, and stop the Core Location services. A location manager object supports the following location-related activities:"
        report.likes = 82143
        report.dislikes = 21
        report.viewCount = 150534
        reportList.append(report)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
