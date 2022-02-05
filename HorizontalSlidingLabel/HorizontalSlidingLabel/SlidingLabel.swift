//
//  SlidingLabel.swift
//  HorizontalSlidingLabel
//
//  Created by Emiliano Mallo on 27/01/2022.
//

import UIKit

@IBDesignable
public class SlidingLabel: UIView {
  private var label = UILabel()
  private var secondLabel = UILabel()
  private var leadingLabelConstraint: NSLayoutConstraint!


  @IBInspectable
  var text: String! {
    didSet {
      // For storyboard usage case
      label.text = text
      // To leave a space between first label and second label.
      secondLabel.text = "   " + text
      animateViews()
    }
  }

  required init?(coder: NSCoder) {
    super.init(coder: coder)
    setup()
  }

    public init(text: String, stringToBreak: String) {
    super.init(frame: .zero)
    self.text = text
    setup()
    animateViews()
  }

  func setup() {
    self.clipsToBounds = true
    label.translatesAutoresizingMaskIntoConstraints = false
    self.addSubview(label)
    setFirstAndCreateSecondLabel(newLabel: label)
  }

  /// Converts secondLabel into first one and starts over the animation.
  private func setFirstAndCreateSecondLabel(newLabel: UILabel) {
    label = newLabel
    leadingLabelConstraint = label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0)
    leadingLabelConstraint?.isActive = true
    label.heightAnchor.constraint(equalTo:  self.heightAnchor).isActive = true

    secondLabel = UILabel()
    secondLabel.translatesAutoresizingMaskIntoConstraints = false
    self.addSubview(secondLabel)

    // SecondLabel
    secondLabel.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: 0).isActive = true
    secondLabel.heightAnchor.constraint(equalTo:  self.heightAnchor).isActive = true
    //For storyboard usage case
    guard let text = text else { return }
    setLabelValues(text)
  }

  func setLabelValues(_ text: String) {
    label.text = text
    //To leave a space between first label and second label.
    secondLabel.text = "   " + text
  }


  // Sliding animation
  private func animateViews() {
    let distanceToMove = (secondLabel.frame.width)
    leadingLabelConstraint.constant -= distanceToMove
    UIView.animate(withDuration: distanceToMove/20, delay: 0.0, options: [.curveLinear], animations: {
      self.layoutIfNeeded()
    }, completion: {[weak self]_ in
      guard let self = self else {return}
      self.label.removeFromSuperview()
      self.setFirstAndCreateSecondLabel(newLabel: self.secondLabel)
      self.layoutIfNeeded()
      self.animateViews()
    })
  }

  public override func layoutSubviews() {
    super.layoutSubviews()
    // Creating blur gradient for the leading of the component.
    let gradientMaskLayer = CAGradientLayer()
    gradientMaskLayer.startPoint = CGPoint(x: 0, y: 0.5)
    gradientMaskLayer.endPoint = CGPoint(x: 1, y: 0.5)
    gradientMaskLayer.frame = self.bounds
    gradientMaskLayer.colors = [UIColor.clear.cgColor, UIColor.white.cgColor, UIColor.white.cgColor, UIColor.clear.cgColor]
    gradientMaskLayer.locations = [0, 0.1, 0.9, 1]
    self.layer.mask = gradientMaskLayer
  }
}

