//
//  DataManager.swift
//  Practice
//
//  Created by FDC-MM11-Leah on 06/08/2019.
//  Copyright © 2019 FDC John Go. All rights reserved.
//

import Foundation

struct DataManager {
    static var shared = DataManager()
    
    // Current selected report
    var selectedReport: Report? = nil
}
