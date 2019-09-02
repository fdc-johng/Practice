//
//  AppUtility.swift
//  Practice
//
//  Created by FDC-MM11-Leah on 06/08/2019.
//  Copyright © 2019 FDC John Go. All rights reserved.
//

import UIKit

struct AppUtility {
    
    static func reactionConverter(_ x: Int?) -> String {
        
        let million = 1000000
        let thousand = 1000
        
        if let reaction = x {
            if reaction >= million {
                return String(format: "%.01f", Double(reaction)/Double(million)) + "m"
            } else if reaction >= thousand {
                return String(format: "%.01f", Double(reaction)/Double(thousand)) + "k"
            } else {
                return String(reaction)
            }
        }
        
        return "\(0)"
    }
    
}
