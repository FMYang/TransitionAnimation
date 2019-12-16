//
//  AppDelegate.swift
//  ViewControllerTransitionAnimation
//
//  Created by yfm on 2019/5/23.
//  Copyright © 2019年 yfm. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = .white
        
        let rootVC = RootViewController()
        self.window?.rootViewController = rootVC
        
        self.window?.makeKeyAndVisible()
        return true
    }


}

