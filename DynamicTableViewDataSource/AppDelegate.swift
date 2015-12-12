//
//  AppDelegate.swift
//  DynamicTableViewDataSource
//
//  Created by verec on 28/11/2015.
//  Copyright © 2015 Cantabilabs Ltd. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication
    ,   didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        Top.wireToAppDelegate(&window) {
            Top.mainView.backgroundColor = UIColor.redColor()
            Top.mainView.addSubview(Views.tableView)

            Binder.binder.bind()
            Storage.modelSource.applyFilter()
        }

        return true
    }
}

