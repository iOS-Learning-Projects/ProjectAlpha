//
//  ViewController.swift
//  ProjectAlpha
//
//  Created by Eduardo Vital Alencar Cunha on 27/06/17.
//  Copyright © 2017 BEPiD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.createConstraintsWithVisualFormat()
    }

    func createConstraintsWithVisualFormat() {
        // Add btn to view
        let btn = UIButton()
        btn.backgroundColor = UIColor.blue
        btn.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(btn)

        let myViews = ["button":btn]

        let horizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[button]-10-|", options: [], metrics: nil, views: myViews)
        let verticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|-250-[button(100)]", options: [], metrics: nil, views: myViews)

        NSLayoutConstraint.activate(horizontalConstraints + verticalConstraints)
    }

    func createConstraintsProgramatically() {
        // Add btn to view
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
        btn.backgroundColor = UIColor.blue
        btn.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(btn)

        // Add size constraint to btn
        let btnConstraintWidth = NSLayoutConstraint(item: btn, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 200)
        let btnConstraintHeight = NSLayoutConstraint(item: btn, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 100)

        // Add align constraint to btn
        let btnConstraintsAlignVertical = NSLayoutConstraint(item: btn, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)
        let btnConstraintsAlignHorizontal = NSLayoutConstraint(item: btn, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0)

        NSLayoutConstraint.activate([btnConstraintWidth, btnConstraintHeight, btnConstraintsAlignVertical, btnConstraintsAlignHorizontal])
    }

}

