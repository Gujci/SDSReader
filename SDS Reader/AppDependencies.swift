//
//  AppDependencies.swift
//  SDS Reader
//
//  Created by Gujgiczer Máté on 29/10/15.
//  Copyright © 2015 SDS. All rights reserved.
//

import UIKit

class AppDependencies: NSObject {
    
    static let sharedInstance = AppDependencies()
    
    func navigateWith(shortcutItem item: UIApplicationShortcutItem) {
        switch (item.localizedTitle) {
        case "Compose":
            NSNotificationCenter.defaultCenter().postNotificationName("NavigateToCompose", object: nil)
            break;
        default:
            break;
        }
    }

}
