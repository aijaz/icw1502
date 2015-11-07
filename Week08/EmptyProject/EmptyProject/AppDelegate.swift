//
//  AppDelegate.swift
//  EmptyProject
//
//  Created by Aijaz Ansari on 11/7/15.
//  Copyright © 2015 Euclid Software, LLC. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var view: UIView!
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool {

        // create my window
        let screen = UIScreen.mainScreen()
        window = UIWindow(frame: screen.bounds) // make window the same size as the screen
        
        // create a new view
        view = RectangleView()
        
        // create a new view controller
        let vc = ViewController()
        
        // let the view controller be responsible for our newly-created view
        vc.view = view
        
        // make the view as large as the window (which is as large as the screen)
        vc.view.frame = window!.frame
        
        // paint the view green, so that we can see it
        vc.view.backgroundColor = UIColor.greenColor()
        
        // right now we have a view controller, but we haven't linked it to the window
        
        // tell the window that when it is displayed, it should tell vc to display its view
        window?.rootViewController = vc
        
        window?.makeKeyAndVisible()
        
        return true
    }

}








