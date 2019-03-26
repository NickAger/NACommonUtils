//
//  UILabel+Measurement.swift
//  Pods
//
//  Created by Nick Ager on 31/08/2016.
//
//

import UIKit

public extension UILabel {
    /**
     Measure the height of a multi-line label given a specific width for non-attributed
     text
     */
    class func size(withText text: String, forWidth width: CGFloat, font: UIFont = UIFont.systemFont(ofSize: UIFont.labelFontSize)) -> CGSize {
        let measurementLabel = UILabel()
        measurementLabel.text = text
        measurementLabel.numberOfLines = 0
        measurementLabel.font = font
        measurementLabel.lineBreakMode = .byWordWrapping
        measurementLabel.translatesAutoresizingMaskIntoConstraints = false
        measurementLabel.widthAnchor.constraint(equalToConstant: width).isActive = true
        let size = measurementLabel.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
        return size
    }
    
    /**
     Measure the height of a multi-line label given a specific width for attributed
     text
     */
    class func size(withAttributedText attributedText: NSAttributedString, forWidth width: CGFloat) -> CGSize {
        let measurementLabel = UILabel()
        measurementLabel.attributedText = attributedText
        measurementLabel.numberOfLines = 0
        measurementLabel.lineBreakMode = .byWordWrapping
        measurementLabel.translatesAutoresizingMaskIntoConstraints = false
        measurementLabel.widthAnchor.constraint(equalToConstant: width).isActive = true
        let size = measurementLabel.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
        return size
    }
    
    /**
     Measure the size of some text
     */
    class func measure(text: String, font: UIFont = UIFont.systemFont(ofSize: UIFont.labelFontSize)) -> CGSize {
        let measurementLabel = UILabel()
        measurementLabel.text = text
        measurementLabel.font = font
        return measurementLabel.intrinsicContentSize
    }
}
