//
//  MenuOption.swift
//  Child Care Center
//
//  Created by GIS on 8/9/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

enum MenuOption: Int, CustomStringConvertible {
    
    case Profile
    case Messages
    case Cameras
    case Notifications
    case Settings
    
    static var count: Int {
        return 5
    }
    
    var description: String {
        switch self {
        case .Profile: return "My account"
        case .Messages: return "Messages"
        case .Cameras: return "Cameras"
        case .Notifications: return "Notifications"
        case .Settings: return "Settings"
        }
    }
    
    var image: UIImage {
        switch self {
        case .Profile: return #imageLiteral(resourceName: "Profile")
        case .Messages: return #imageLiteral(resourceName: "Message")
        case .Cameras: return #imageLiteral(resourceName: "SecurityCamera")
        case .Notifications: return #imageLiteral(resourceName: "Notification")
        case .Settings: return #imageLiteral(resourceName: "SettingsBlack")
        }
    }
}
