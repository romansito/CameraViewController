//
//  CameraViewController.swift
//  ProgrammaticalCameraViewController
//
//  Created by Roman Salazar Lopez on 5/25/16.
//  Copyright © 2016 Roman Salazar Lopez. All rights reserved.
//

import UIKit
import AVFoundation

class CameraViewController: UIViewController {
	
	let sess = AVCaptureSession()
	var prewLAyer = AVCaptureVideoPreviewLayer()
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setupViewController()
		setupNavigationBar()
		view.setNeedsUpdateConstraints()
		
	}
	
	func backButtonSelected() {
		self.dismissViewControllerAnimated(true, completion: nil)
	}
	
	func setupNavigationBar() {
		
		let navigationBar = UINavigationBar(frame: CGRect(x: 0.0, y: 0.0, width: view.frame.width, height: 64))
		let navigationTitle = UINavigationItem.init(title: "Post")
		navigationTitle.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem:UIBarButtonSystemItem.Cancel, target: self, action: #selector(CameraViewController.backButtonSelected))
		
		navigationBar.setItems([navigationTitle], animated: false)
		view.addSubview(navigationBar)
	}
	
	func setupViewController() {
		
		view.backgroundColor = UIColor.whiteColor()
		
		let camera = AVCaptureDevice.defaultDeviceWithMediaType(AVMediaTypeVideo)
		guard let input = try? AVCaptureDeviceInput(device: camera) else {return}
		self.sess.addInput(input)
		
		let previewLayer = AVCaptureVideoPreviewLayer(session:self.sess)
		previewLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
		previewLayer.frame = CGRectMake(0.0, 64.0, view.frame.width, view.frame.width)
		
		self.prewLAyer = previewLayer
		self.sess.startRunning()
		
		view.layer.addSublayer(previewLayer)
		
	}
	
}
