//
//  LayoutCustomizable.swift
//  Overlay
//
//  Created by Justin Jia on 8/23/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes a view that its layout can be customized.
public protocol LayoutCustomizable {
    /// Customizes the layout.
    /// - Parameter contentNib: An `UINib` that represents the layout.
    func customizeLayout(using contentNib: UINib)
}

extension UIView: LayoutCustomizable {
    public func customizeLayout(using contentNib: UINib) {
        if let contentView = contentNib.instantiate(withOwner: self).first as? UIView, !subviews.contains(contentView) {
            contentView.translatesAutoresizingMaskIntoConstraints = false
            insertSubview(contentView, at: 0)
            contentView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
            contentView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
            contentView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
            contentView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        }
    }
}
