//
//  ActivityOverlay.swift
//  Light-weight MBProgressHUD
//
//  NACommonUtils
//
//  Created by Nick Ager on 05/02/2016.
//  Copyright © 2016 RocketBox Ltd. All rights reserved.
//

import UIKit

/**
 Light-weight version of [MBProgessHUD](https://github.com/jdg/MBProgressHUD) - 
 shows a translucent HUD centred in a specified view containing an activity indicator
 
 - Parameter superview:  the view to display the HUB over and centred in.
 
 - Returns: The HUD view. Use `view.removeFromSuperview()` to remove the HUD.
 */
public func showActivityOverlayAddedTo(superview: UIView) -> UIView {
    let activityOverlay = createActivityOverlay()
    superview.addSubview(activityOverlay)
    addContraints(to: activityOverlay, superview: superview)

    let activityIndicator = createActivityIndicator()
    activityOverlay.addSubview(activityIndicator)
    activityIndicator.centerIn(superview: activityOverlay)
    
    return activityOverlay
}

private func createActivityOverlay() -> UIView {
    let activityOverlay = UIView()
    activityOverlay.layer.cornerRadius = 10
    activityOverlay.layer.masksToBounds = true
    activityOverlay.alpha = 0.9
    activityOverlay.isOpaque = false
    activityOverlay.backgroundColor = UIColor.darkGray
    activityOverlay.translatesAutoresizingMaskIntoConstraints = false
    activityOverlay.useAutolayout()
    return activityOverlay
}

private func addContraints(to activityOverlay: UIView, superview: UIView) {
    activityOverlay.constrainTo(width:100)
    activityOverlay.constrainTo(height:100)
    activityOverlay.centerIn(superview:superview)
}

private func createActivityIndicator() -> UIView {
    let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
    activityIndicator.startAnimating()
    activityIndicator.useAutolayout()
    return activityIndicator
}
