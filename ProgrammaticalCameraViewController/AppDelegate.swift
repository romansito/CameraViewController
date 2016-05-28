//
//  AppDelegate.swift
//  ProgrammaticalCameraViewController
//
//  Created by Roman Salazar Lopez on 5/25/16.
//  Copyright © 2016 Roman Salazar Lopez. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?


	func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
		
		window = UIWindow.init(frame: UIScreen.mainScreen().bounds)

		let homeViewController = HomeViewController()
		window?.rootViewController = homeViewController
		window?.backgroundColor = UIColor.whiteColor()
		window?.makeKeyAndVisible()
		
		return true
	}




}

