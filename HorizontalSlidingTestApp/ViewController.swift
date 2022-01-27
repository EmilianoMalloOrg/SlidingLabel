//
//  ViewController.swift
//  HorizontalSlidingTestApp
//
//  Created by Emiliano Mallo on 27/01/2022.
//

import UIKit
import HorizontalSlidingLabel

class ViewController: UIViewController {
  var labelSliding = SlidingLabel(text: "Programmatic - Label")

  override func viewDidLoad() {
    super.viewDidLoad()

    labelSliding.translatesAutoresizingMaskIntoConstraints = false
    self.view.addSubview(labelSliding)
    labelSliding.widthAnchor.constraint(equalToConstant:  80).isActive = true
    labelSliding.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    labelSliding.topAnchor.constraint(equalTo:  self.view.topAnchor, constant: 40).isActive = true
  }
}

