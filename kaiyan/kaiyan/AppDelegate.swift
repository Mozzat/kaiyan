//
//  AppDelegate.swift
//  kaiyan
//
//  Created by 上海荣豫资产 on 2020/4/20.
//  Copyright © 2020 上海荣豫资产. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = UIColor.white
        self.window?.rootViewController = TabBarController.init()
        self.window?.makeKeyAndVisible()
        
        return true
    }

}

