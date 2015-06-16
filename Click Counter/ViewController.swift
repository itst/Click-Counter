//
//  ViewController.swift
//  Click Counter
//
//  Created by Sascha A. Carlin on 16.06.15.
//  Copyright (c) 2015 Sascha A. Carlin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	var counter = 0
	var label: UILabel!
	var secondLabel: UILabel!
	var colors: [UIColor] = []

	override func viewDidLoad() {
		super.viewDidLoad()
		
		colors.append(UIColor(white: 1, alpha: 1))
		colors.append(UIColor(white: 1, alpha: 0.9))
		
		label = UILabel()
		label.frame = CGRectMake(150, 150, 60, 60)
		label.text = "0"
		
		secondLabel = UILabel()
		secondLabel.frame = CGRectMake(190, 150, 60, 60)
		secondLabel.text = "0"
		
		var button = UIButton()
		button.frame = CGRectMake(150, 250, 90, 60)
		button.setTitle("Increase", forState: .Normal)
		button.setTitleColor(UIColor.blueColor(), forState: .Normal)
		button.tag = 1
		
		var secondButton = UIButton()
		secondButton.frame = CGRectMake(150, 310, 90, 60)
		secondButton.setTitle("Decrease", forState: .Normal)
		secondButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
		secondButton.tag = -1
		
		view.addSubview(label)
		view.addSubview(secondLabel)
		view.addSubview(button)
		view.addSubview(secondButton)
		
		button.addTarget(self, action: "updateCounter:", forControlEvents: UIControlEvents.TouchUpInside)
		button.addTarget(self, action: "toggleColor:", forControlEvents: UIControlEvents.TouchUpInside)
		secondButton.addTarget(self, action: "updateCounter:", forControlEvents: UIControlEvents.TouchUpInside)
		secondButton.addTarget(self, action: "toggleColor:", forControlEvents: UIControlEvents.TouchUpInside)

	}
	
	func updateCounter(sender: UIButton!) {
		counter+=sender.tag
		label.text = "\(counter)"
		secondLabel.text = "\(counter)"
	}

	func toggleColor(sender: UIButton!) {
		if counter % 2 == 0 {
			view.backgroundColor = colors[0]
		} else {
			view.backgroundColor = colors[1]
		}
	}
	
}

