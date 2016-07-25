//
//  CustomFont.swift
//  Overlay
//
//  Created by Justin Jia on 6/16/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

public protocol CustomFont: ViewCustomizable {

    var font: UIFont! { get set }
    var fontStyle: FontStyle { get }

}
