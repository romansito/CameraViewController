//
//  HomeViewController.swift
//  ProgrammaticalCameraViewController
//
//  Created by Roman Salazar Lopez on 5/25/16.
//  Copyright © 2016 Roman Salazar Lopez. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
		
		setupNavigationBar()
		view.addSubview(button)
		view.setNeedsUpdateConstraints()
    }
	
	func buttonPressed() {
		let cameraVC = CameraViewController()
		presentViewController(cameraVC, animated: true, completion: nil)
		
	}

	override func updateViewConstraints() {
		buttonConstraints()
		super.updateViewConstraints()
	}
 
	func setupNavigationBar() {
		let navigationBar = UINavigationBar(frame: CGRect(x: 0.0, y: 0.0, width: view.frame.width, height: 64))
		let navigationTitle = UINavigationItem(title: "Home")
		navigationBar.setItems([navigationTitle], animated: false)
		view.addSubview(navigationBar)

	}
	
	lazy var button: UIButton = {
		let view = UIButton()
		view.translatesAutoresizingMaskIntoConstraints = false
		view.addTarget(self, action: #selector(HomeViewController.buttonPressed), forControlEvents: .TouchDown)
		view.setTitle("Share", forState: .Normal)
		view.backgroundColor = buttonBlueColor
		return view
		
	}()
	
	func buttonConstraints() {
		
	NSLayoutConstraint(
		item: button,
		attribute: .CenterX,
		relatedBy: .Equal,
		toItem: view,
		attribute: .CenterX,
		multiplier: 1.0,
		constant: 0.0)
	.active = true
  
	NSLayoutConstraint(
		item: button,
		attribute: .Width,
		relatedBy: .Equal,
		toItem: view,
		attribute: .Width,
		multiplier: 0.6,
		constant: 0.0)
	.active = true
  
	NSLayoutConstraint(
		item: button,
		attribute: .Bottom,
		relatedBy: .Equal,
		toItem: view,
		attribute: .Bottom,
		multiplier: 0.9,
		constant: 0.0)
	.active = true
		
	}
	
}
