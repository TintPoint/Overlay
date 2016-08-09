//
//  CustomLayout.swift
//  Look
//
//  Created by Justin Jia on 6/26/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

public protocol CustomLayout: ViewCustomizable {
    
    var nib: UINib { get }

}

extension CustomLayout {
    
    func contentView(of superview: UIView) -> UIView? {
        return nib.instantiate(withOwner: superview, options: nil).first as? UIView
    }
    
}
