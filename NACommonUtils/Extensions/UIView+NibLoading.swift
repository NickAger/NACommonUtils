//
//  UIView+NibLoading.swift
//
//  NACommonUtils
//
//  Created by Nick Ager on 04/05/2016.
//  idea taken from https://blog.compeople.eu/apps/?p=97
//  Copyright © 2016 RocketBox Ltd. All rights reserved.
//

import UIKit

public extension UIView {
    /**
     Load an instance of a view from a nib named identically to the class, for
     example with a swift class named `ConditionTableViewCell` and a nib named
     `ConditionTableViewCell.nib` you can instantiate the class with:
        ConditionTableViewCell.instanceFromNib()
     
     - Returns: An optional instance of the view class`
     */
    static func instanceFromNib() -> Self? {
        return instanceFromNibHelper()
    }
    
    // Idea for handling return types from:
    // http://stackoverflow.com/questions/33200035/return-instancetype-in-swift
    private static func instanceFromNibHelper<T>() -> T? {
        let viewTypeName = String(describing: self)
        let elements = Bundle.main.loadNibNamed(viewTypeName, owner: nil)
        
        var view : T? = nil
        if let index = elements?.index(where: { $0 is T }) {
            view = (elements?[index]) as? T
        }
        return view
    }
}
