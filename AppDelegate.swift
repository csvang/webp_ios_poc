//
//  AppDelegate.swift
//  webp_poc
//
//  Created by Shaman King on 9/12/22.
//

import UIKit
import SDWebImageSwiftUI
import SDWebImageWebPCoder

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        SDImageCodersManager.shared.addCoder(SDImageWebPCoder.shared)
        
        // Add default HTTP header
        SDWebImageDownloader.shared.setValue("image/webp,image/apng,image/*,*/*;q=0.8", forHTTPHeaderField: "Accept")
        
        
        // Override point for customization after application launch.
        return true
    }
}
