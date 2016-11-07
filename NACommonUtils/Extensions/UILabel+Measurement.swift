//
//  UILabel+Measurement.swift
//  Pods
//
//  Created by Nick Ager on 31/08/2016.
//
//

import UIKit

public extension UILabel {
    public class func size(withText text: String, forWidth width: CGFloat) -> CGSize {
        let measurementLabel = UILabel()
        measurementLabel.text = text
        measurementLabel.numberOfLines = 0
        measurementLabel.lineBreakMode = .byWordWrapping
        measurementLabel.translatesAutoresizingMaskIntoConstraints = false
        measurementLabel.widthAnchor.constraint(equalToConstant: width).isActive = true
        let size = measurementLabel.systemLayoutSizeFitting(UILayoutFittingCompressedSize)
        return size
    }
    
    public class func size(withAttributedText attributedText: NSAttributedString, forWidth width: CGFloat) -> CGSize {
        let measurementLabel = UILabel()
        measurementLabel.attributedText = attributedText
        measurementLabel.numberOfLines = 0
        measurementLabel.lineBreakMode = .byWordWrapping
        measurementLabel.translatesAutoresizingMaskIntoConstraints = false
        measurementLabel.widthAnchor.constraint(equalToConstant: width).isActive = true
        let size = measurementLabel.systemLayoutSizeFitting(UILayoutFittingCompressedSize)
        return size
    }
}
